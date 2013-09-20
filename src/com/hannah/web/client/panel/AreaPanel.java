package com.hannah.web.client.panel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.JFrame;
import javax.swing.SwingConstants;
import javax.swing.UIManager;

import com.hannah.swing.component.panel.PagingTablePanel;
import com.hannah.swing.component.table.BasicTableHeader;
import com.hannah.web.client.system.ServiceFactory;
import com.hannah.web.common.model.Area;
import com.hannah.web.common.service.IAreaService;
import com.hannah.web.common.service.IBaseService;

public class AreaPanel extends BasicCurdPanel {

	private static final long serialVersionUID = -2595116736905439475L;

	private String cityCode;
	
	public AreaPanel() {
		initInterface();
	}

	public String getCityCode() {
		return cityCode;
	}

	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}

	@Override
	protected IBaseService getBaseService() {
		IAreaService service = (IAreaService) ServiceFactory.create(IAreaService.class,
				"areaService");
		return service;
	}

	@Override
	protected void initInterface() {
		super.initInterface();
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
	protected Map getQueryParams() {
		Map map = new HashMap();
		map.put("cityCode", cityCode);
		return map;
	}

	@Override
	protected Object getNewObject() {
		Area area = new Area();
		area.setCityCode(cityCode);
		return area;
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
		AreaPanel panel = new AreaPanel();
		panel.setPagingType(PagingTablePanel.DB_PAGING);
		JFrame frame = new JFrame("AREA");
		frame.add(panel);
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
		panel.doRefresh();
	}

}
