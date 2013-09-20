package com.hannah.web.creator;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.DecimalFormat;

import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFormattedTextField;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.JToolBar;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

import com.hannah.common.util.DbUtil;
import com.hannah.common.util.StringUtil;
import com.hannah.swing.util.AbstractInvokeHandler;
import com.hannah.swing.util.UiUtil;

/**
 * @author longrm
 * @date 2012-6-11
 */
public class CreatorFrame extends JFrame {

	private static final long serialVersionUID = -7763775060068663377L;

	private JToolBar toolBar;

	private JComboBox dbTypeCb = new JComboBox();
	private JCheckBox autoClassifyCb = new JCheckBox("Auto Classify");
	private JCheckBox addDbCommentsCb = new JCheckBox("Add Db Comments", null, true);
	private JTextField ipTf = new JTextField(10);
	private JFormattedTextField portTf = new JFormattedTextField(new DecimalFormat("0"));
	private JTextField sidTf = new JTextField(5);
	private JTextField userTf = new JTextField(10);
	private JPasswordField passwordPf = new JPasswordField(10);
	private JTextField tableTf = new JTextField(20);
	private JTextField packageTf = new JTextField(20);

	private JTextArea ta = new JTextArea(20, 0);

	private IbatisCreator creator = new IbatisCreator();

	public CreatorFrame() {
		initToolBar();

		dbTypeCb.addItem("Oracle");
		dbTypeCb.addItem("MySQL");
		dbTypeCb.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				setDefaultValue();
			}
		});

		autoClassifyCb.addChangeListener(new ChangeListener() {
			@Override
			public void stateChanged(ChangeEvent e) {
				String packageName = IbatisCreator.class.getPackage().getName();
				packageTf.setText(!autoClassifyCb.isSelected() ? packageName : packageName.substring(0,
						packageName.lastIndexOf(".")));
			}
		});

		int hgap = 20;
		int vgap = 5;

		JPanel panel1 = new JPanel(new FlowLayout(FlowLayout.LEFT, hgap, vgap));
		panel1.add(new JLabel("Database:"));
		panel1.add(dbTypeCb);
		panel1.add(autoClassifyCb);
		panel1.add(addDbCommentsCb);
		setDefaultValue();

		JPanel panel2 = new JPanel(new FlowLayout(FlowLayout.LEFT, hgap, vgap));
		panel2.add(new JLabel("               Ip:"));
		panel2.add(ipTf);
		panel2.add(new JLabel("Port:"));
		portTf.setPreferredSize(new Dimension(50, 20));
		panel2.add(portTf);
		panel2.add(new JLabel("Sid:"));
		panel2.add(sidTf);

		JPanel panel3 = new JPanel(new FlowLayout(FlowLayout.LEFT, hgap, vgap));
		panel3.add(new JLabel("         User:"));
		panel3.add(userTf);
		panel3.add(new JLabel("Password:"));
		panel3.add(passwordPf);

		JPanel panel4 = new JPanel(new FlowLayout(FlowLayout.LEFT, hgap, vgap));
		panel4.add(new JLabel("        Table:"));
		panel4.add(tableTf);

		JPanel panel5 = new JPanel(new FlowLayout(FlowLayout.LEFT, hgap, vgap));
		panel5.add(new JLabel("  Package:"));
		panel5.add(packageTf);

		JPanel panel = new JPanel();
		panel.setLayout(new GridLayout(6, 1, 0, 0));
		panel.add(toolBar);
		panel.add(panel1);
		panel.add(panel2);
		panel.add(panel3);
		panel.add(panel4);
		panel.add(panel5);

		this.setLayout(new BorderLayout());
		this.add(panel, BorderLayout.NORTH);

		JScrollPane scrollPane = new JScrollPane(ta);
		ta.setFont(new Font("Courier New", Font.PLAIN, 13));
		ta.setBackground(new Color(199, 237, 204));
		this.add(scrollPane, BorderLayout.CENTER);

		this.setTitle("Ibatis Creator");
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setSize(600, 650);
		this.setLocationRelativeTo(null);
	}

	private void setDefaultValue() {
		ipTf.setText("127.0.0.1");
		if ("Oracle".equals(dbTypeCb.getSelectedItem())) {
			portTf.setValue(1521);
			sidTf.setText("orcl");
		} else if ("MySQL".equals(dbTypeCb.getSelectedItem())) {
			portTf.setValue(3306);
			sidTf.setText("test");
		} else {
			// TODO other database
		}
		userTf.setText("test");
		passwordPf.setText("1");
		tableTf.setText("");

		String packageName = getClass().getPackage().getName();
		packageTf.setText(!autoClassifyCb.isSelected() ? packageName : packageName.substring(0,
				packageName.lastIndexOf(".")));
	}

	private void initToolBar() {
		ActionListener l = new ActionListener() {

			@Override
			public void actionPerformed(final ActionEvent e) {
				String checkResult = check();
				if (!StringUtil.isNull(checkResult)) {
					JOptionPane.showMessageDialog(CreatorFrame.this, checkResult, "Check Result",
							JOptionPane.ERROR_MESSAGE);
					return;
				}

				UiUtil.asyncInvoke(new AbstractInvokeHandler() {

					@Override
					public void before() {
						super.before();
						UiUtil.setComponentsEnabled(toolBar, false);
					}

					@Override
					public Object execute() throws Exception {
						Connection conn = null;
						try {
							return doClick(conn, e);
						} catch (Exception ex) {
							throw ex;
						} finally {
							DbUtil.closeConnection(conn);
						}
					}

					@Override
					public void success(Object result) {
						ta.setForeground(Color.BLACK);
						ta.setText(result.toString());
					}

					@Override
					public void failure(Exception ex) {
						// super.failure(ex);
						showErrorMessage(ex);
					}

					@Override
					public void after() {
						super.after();
						UiUtil.setComponentsEnabled(toolBar, true);
					}

				});
			}
		};

		JButton testBut = new JButton("Test conn");
		JButton allBut = new JButton("Create all");
		JButton modelBut = new JButton("Create model");
		JButton ibatisMapBut = new JButton("Create ibatis map");
		JButton daoBut = new JButton("Create dao");
		JButton serviceBut = new JButton("Create service");

		testBut.addActionListener(l);
		allBut.addActionListener(l);
		modelBut.addActionListener(l);
		ibatisMapBut.addActionListener(l);
		daoBut.addActionListener(l);
		serviceBut.addActionListener(l);

		toolBar = new JToolBar();
		toolBar.add(testBut);
		toolBar.add(allBut);
		toolBar.add(modelBut);
		toolBar.add(ibatisMapBut);
		toolBar.add(daoBut);
		toolBar.add(serviceBut);
	}

	protected String check() {
		if (StringUtil.isNull(tableTf.getText()))
			return "Table Name is empty!";
		if (StringUtil.isNull(packageTf.getText()))
			return "Package is empty!";
		return null;
	}

	private String doClick(Connection conn, ActionEvent e) throws Exception, SQLException, IOException {
		StringBuffer result = new StringBuffer();

		conn = getConnection();
		creator.setDbType(dbTypeCb.getSelectedItem().toString());
		creator.setConn(conn);
		creator.setAutoClassify(autoClassifyCb.isSelected());
		creator.setAddDbComments(addDbCommentsCb.isSelected());
		creator.setPackageName(packageTf.getText());
		creator.setScheme(userTf.getText().toUpperCase());
		creator.setTable(tableTf.getText().toUpperCase());

		result.append(creator.initData() + "\n\nCreator Initial Successful!");

		String command = e.getActionCommand();

		String split = "\n---------------------------------------\n\n";
		if ("Create all".equals(command)) {
			result.append(split);
			result.append(creator.createModel());
			result.append(split);
			result.append(creator.createIbatisMap());
			result.append(split);
			result.append(creator.createDaoImplement());
			result.append(split);
			result.append(creator.createService());
		} else if ("Create model".equals(command)) {
			result.append(split);
			result.append(creator.createModel());
		} else if ("Create ibatis map".equals(command)) {
			result.append(split);
			result.append(creator.createIbatisMap());
		} else if ("Create dao".equals(command)) {
			result.append(split);
			result.append(creator.createDaoImplement());
		} else if ("Create service".equals(command)) {
			result.append(split);
			result.append(creator.createService());
		}
		return result.toString();
	}

	private Connection getConnection() throws Exception {
		Connection conn = DbUtil.getConnection(dbTypeCb.getSelectedItem().toString(), ipTf.getText(),
				(Integer)portTf.getValue(), sidTf.getText(), userTf.getText(),
				new String(passwordPf.getPassword()));
		return conn;
	}

	private void showErrorMessage(Exception e) {
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		e.printStackTrace(new PrintStream(out));
		ta.setForeground(Color.RED);
		ta.setText(new String(out.toByteArray()));
	}

	public static void main(String[] args) {
		new CreatorFrame().setVisible(true);
	}

}
