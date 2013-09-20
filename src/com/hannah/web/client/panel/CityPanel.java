package com.hannah.web.client.panel;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.JFrame;
import javax.swing.SwingConstants;
import javax.swing.UIManager;

import org.jvnet.substance.SubstanceDefaultLookAndFeel;
import org.jvnet.substance.skin.SubstanceBusinessLookAndFeel;

import com.hannah.common.util.StringUtil;
import com.hannah.swing.component.panel.PagingTablePanel;
import com.hannah.swing.component.table.BasicTableHeader;
import com.hannah.web.client.system.ServiceFactory;
import com.hannah.web.common.model.City;
import com.hannah.web.common.service.IBaseService;
import com.hannah.web.common.service.ICityService;

public class CityPanel extends BasicCurdPanel {

	private static final long serialVersionUID = -6629213162491403974L;

	private String provinceCode;
	
	public CityPanel() {
		initInterface();
	}

	public String getProvinceCode() {
		return provinceCode;
	}

	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}

	@Override
	protected IBaseService getBaseService() {
		ICityService service = (ICityService) ServiceFactory.create(ICityService.class,
				"cityService");
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
					String cityCode = (String) table.getValueAt(row, column);
					column = table.getColumnModel().getColumnIndex("NAME");
					String cityName = (String) table.getValueAt(row, column);
					showAreaFrame(cityCode, cityName);
				}
			}
		});
	}

	protected void showAreaFrame(String cityCode, String cityName) {
		AreaPanel panel = new AreaPanel();
		panel.setPagingType(PagingTablePanel.DB_PAGING);
		if (!StringUtil.isNull(cityCode)) {
			panel.setCityCode(cityCode);
			panel.setTitle(cityCode + " " + cityName);
		}

		JFrame frame = new JFrame("AREA");
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
		header.setEditable(true);
		header.setAlignment(SwingConstants.CENTER);
		header.setWidth(50);
		headerList.add(header);

		header = new BasicTableHeader("NAME", "名称");
		header.setEditable(true);
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
	protected Map getQueryParams() {
		Map map = new HashMap();
		map.put("provinceCode", provinceCode);
		return map;
	}

	@Override
	protected Object getNewObject() {
		City city = new City();
		city.setProvinceCode(provinceCode);
		return city;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			UIManager.setLookAndFeel(new SubstanceBusinessLookAndFeel());
		} catch (Exception e) {
			e.printStackTrace();
		}

		ServiceFactory.setWebRoot("http://127.0.0.1:7003/hannahlongrm");
		CityPanel panel = new CityPanel();
		JFrame frame = new JFrame("CITY");
		frame.add(panel);
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
		panel.doRefresh();
	}

}
