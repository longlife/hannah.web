package com.hannah.web.client.panel;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.SwingConstants;
import javax.swing.UIManager;

import com.hannah.common.util.StringUtil;
import com.hannah.swing.component.panel.PagingTablePanel;
import com.hannah.swing.component.table.BasicTableHeader;
import com.hannah.web.client.system.ServiceFactory;
import com.hannah.web.common.model.Province;
import com.hannah.web.common.service.IBaseService;
import com.hannah.web.common.service.IProvinceService;

public class ProvincePanel extends BasicCurdPanel {

	private static final long serialVersionUID = -8262548981072837664L;
	
	public ProvincePanel() {
		initInterface();
	}

	@Override
	protected IBaseService getBaseService() {
		IProvinceService service = (IProvinceService) ServiceFactory.create(IProvinceService.class,
				"provinceService");
		return service;
	}

	@Override
	protected void initInterface() {
		super.initInterface();
		table.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				if (e.getClickCount() == 2) {
					int row = table.getSelectedRow();
					int column = table.getColumnModel().getColumnIndex("CODE");
					String provinceCode = (String) table.getValueAt(row, column);
					column = table.getColumnModel().getColumnIndex("NAME");
					String provinceName = (String) table.getValueAt(row, column);
					showCityFrame(provinceCode, provinceName);
				}
			}
		});
	}

	protected void showCityFrame(String provinceCode, String provinceName) {
		CityPanel panel = new CityPanel();
		panel.setPagingType(PagingTablePanel.NO_PAGING);
		if (!StringUtil.isNull(provinceCode)) {
			panel.setProvinceCode(provinceCode);
			panel.setTitle(provinceCode + " " + provinceName);
		}

		JFrame frame = new JFrame("CITY");
		frame.add(panel);
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		frame.setLocationRelativeTo(this);
		frame.setVisible(true);
		panel.doRefresh();
	}

	@Override
	protected List<BasicTableHeader> getTableHeaderList() {
		List<BasicTableHeader> headerList = new ArrayList<BasicTableHeader>();
		BasicTableHeader header = new BasicTableHeader("ID", "标识");
		header.setAlignment(SwingConstants.RIGHT);
		header.setWidth(20);
		headerList.add(header);

		header = new BasicTableHeader("CODE", "代码");
		header.setAlignment(SwingConstants.CENTER);
		header.setWidth(50);
		headerList.add(header);

		header = new BasicTableHeader("NAME", "名称");
		header.setWidth(80);
		headerList.add(header);

		header = new BasicTableHeader("PINYIN", "拼音");
		header.setEditable(true);
		header.setWidth(80);
		headerList.add(header);

		header = new BasicTableHeader("SIMPLE_CODE", "简码");
		header.setEditable(true);
		header.setAlignment(SwingConstants.CENTER);
		header.setWidth(20);
		headerList.add(header);
		return headerList;
	}

	@Override
	protected Object getNewObject() {
		return new Province();
	}

	@Override
	protected Object getQueryParams() {
		return new HashMap();
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ServiceFactory.setWebRoot("http://127.0.0.1:7003/hannahlongrm");
		ProvincePanel panel = new ProvincePanel();
		panel.setPagingType(PagingTablePanel.CACHE_PAGING);
		JFrame frame = new JFrame("PROVINCE");
		frame.add(panel);
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
		panel.doRefresh();
	}

}
