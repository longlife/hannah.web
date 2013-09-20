package com.hannah.web.client.panel;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.JToolBar;
import javax.swing.table.TableCellEditor;

import com.hannah.common.util.StringUtil;
import com.hannah.swing.component.button.ImageButton;
import com.hannah.swing.component.panel.PagingTablePanel;
import com.hannah.swing.component.table.BasicTableHeader;
import com.hannah.swing.component.table.BasicTableModel;
import com.hannah.swing.util.AbstractInvokeHandler;
import com.hannah.swing.util.TableUtil;
import com.hannah.swing.util.UiUtil;
import com.hannah.web.common.service.IBaseService;

/**
 * basic Create、Update、Read and Delete panel
 * @author longrm
 * @date 2012-6-15
 */
public abstract class BasicCurdPanel extends JPanel {

	private static final long serialVersionUID = -446534274470459732L;

	protected JToolBar toolBar;
	protected ImageButton refreshButton = new ImageButton("刷新");
	protected ImageButton addButton = new ImageButton("增加");
	protected ImageButton deleteButton = new ImageButton("删除");
	protected ImageButton saveButton = new ImageButton("保存");

	protected JPanel titlePanel;
	protected JLabel titleLb = new JLabel();

	protected PagingTablePanel tablePanel;
	protected JTable table;

	protected IBaseService baseService;

	public BasicCurdPanel() {
		// initInterface();
	}

	protected abstract IBaseService getBaseService();

	protected void initInterface() {
		baseService = getBaseService();
		initTablePanel();
		initToolBar();
		initTitlePanel();

		JPanel panel = new JPanel(new BorderLayout());
		panel.add(toolBar, BorderLayout.NORTH);
		panel.add(titlePanel, BorderLayout.CENTER);

		this.setLayout(new BorderLayout());
		this.add(panel, BorderLayout.NORTH);
		this.add(tablePanel, BorderLayout.CENTER);
	}

	protected void initTablePanel() {
		tablePanel = new PagingTablePanel() {
			@Override
			public List getPagingDataList(int startRow, int count) throws Exception {
				if (getPagingType() == DB_PAGING)
					return baseService.selectPagingData(getQueryParams(), startRow, count);
				else
					return super.getPagingDataList(startRow, count);
			}
		};
		table = tablePanel.getTable();
		BasicTableModel model = new BasicTableModel(getTableHeaderList());
		model.setObjectClass(getNewObject().getClass());
		model.setTable(table);
		table.setModel(model);
		TableUtil.setTableColumnWidth(table);
	}

	protected abstract List<BasicTableHeader> getTableHeaderList();

	protected void initTitlePanel() {
		titleLb.setFont(new Font("黑体", Font.BOLD, 18));
		titlePanel = new JPanel(new FlowLayout(FlowLayout.CENTER, 0, 10));
		titlePanel.add(titleLb);
		titlePanel.setVisible(false);
	}

	public void setTitle(String title) {
		titleLb.setText(title);
		titlePanel.setVisible(!StringUtil.isNull(title));
	}

	protected void initToolBar() {
		ActionListener l = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				TableCellEditor cellEditor = table.getCellEditor();
				if (cellEditor != null)
					cellEditor.stopCellEditing();
				
				if (e.getSource() == refreshButton)
					doRefresh();
				else if (e.getSource() == addButton)
					doAdd();
				else if (e.getSource() == deleteButton)
					doDelete();
				else if (e.getSource() == saveButton)
					doSave();
			}
		};

		refreshButton.addActionListener(l);
		addButton.addActionListener(l);
		deleteButton.addActionListener(l);
		saveButton.addActionListener(l);

		toolBar = new JToolBar();
		toolBar.add(refreshButton);
		toolBar.add(addButton);
		toolBar.add(deleteButton);
		toolBar.add(saveButton);
	}

	protected abstract Object getQueryParams();

	protected abstract Object getNewObject();

	public void doRefresh() {
		UiUtil.asyncInvoke(new AbstractInvokeHandler() {

			@Override
			public void before() {
				super.before();
				((BasicTableModel) table.getModel()).clearDatas();
//				BasicCurdPanel.this.refreshButton.setEnabled(false);
				UiUtil.setComponentsEnabled(toolBar, false);
			}

			@Override
			public void after() {
				super.after();
//				BasicCurdPanel.this.refreshButton.setEnabled(true);
				UiUtil.setComponentsEnabled(toolBar, true);
			}

			@Override
			public void success(Object result) {
				tablePanel.toPage(1);
			}

			@Override
			public Object execute() throws Exception {
				Object params = getQueryParams();
				if (tablePanel.getPagingType() == PagingTablePanel.NO_PAGING
						|| tablePanel.getPagingType() == PagingTablePanel.CACHE_PAGING) {
					List result = baseService.select(params);
					tablePanel.setDataList(result);
				} else {
					int count = baseService.selectCount(params);
					tablePanel.setDataCount(count);
				}
				return null;
			}
		});
	}

	protected void doAdd() {
		BasicTableModel model = (BasicTableModel) table.getModel();
		int row = table.getSelectedRow() == -1 ? table.getRowCount() : table.getSelectedRow();
		model.insert(row, getNewObject());
		table.setRowSelectionInterval(row, row);
		Rectangle rect = table.getCellRect(row, 0, true);
		table.scrollRectToVisible(rect);
	}

	protected void doDelete() {
		BasicTableModel model = (BasicTableModel) table.getModel();
		int[] rows = table.getSelectedRows();
		List<Object> rowList = new ArrayList<Object>();
		for (int row : rows) {
			row = table.convertRowIndexToModel(row);
			Object obj = model.getDataList().get(row);
			rowList.add(obj);
		}
		if (rowList.size() > 0)
			model.delete(rowList);
		else
			JOptionPane.showMessageDialog(BasicCurdPanel.this, "请选择需要删除的数据！", "删除",
					JOptionPane.WARNING_MESSAGE);
	}

	protected void doSave() {
		if (table.getCellEditor() != null)
			table.getCellEditor().stopCellEditing();
		
		BasicTableModel model = (BasicTableModel) table.getModel();
		if (!model.isChanged()) {
			JOptionPane.showMessageDialog(BasicCurdPanel.this, "数据未改变，无需保存！", "保存",
					JOptionPane.WARNING_MESSAGE);
			return;
		}

		if (!checkSave()) 
		  return;

		List<Object> insertList = model.getInsertList();
		List<Object> deleteList = model.getDeleteList();
		List<Object> updateList = model.getUpdateList();
		System.out.println("Insert:\t" + insertList);
		System.out.println("Delete:\t" + deleteList);
		System.out.println("Update:\t" + updateList);
		try {
			baseService.save(insertList, deleteList, updateList);
			model.clearChanges();
			JOptionPane.showMessageDialog(BasicCurdPanel.this, "保存成功!", "保存",
					JOptionPane.INFORMATION_MESSAGE);
		} catch (Exception ex) {
			UiUtil.showStackTraceDialog(ex, "保存");
		}
	}
	
	protected boolean checkSave() {
    return true;
  }

	public void setPagingType(int pagingType) {
		tablePanel.setPagingType(pagingType);
	}

	public void setPageSize(int pageSize) {
		tablePanel.setPageSize(pageSize);
	}

}
