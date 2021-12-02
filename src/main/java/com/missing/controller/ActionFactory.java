package com.missing.controller;

import com.missing.controller.action.*;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory  :" + command);
		/* 추가된 부분 */
		if (command.equals("contract")) {
			action = new ContractAction();
		} else if (command.equals("join_form")) {
			action = new JoinFormAction();
		} else if (command.equals("id_check_form")) {
			action = new IdCheckFormAction();
		}else if (command.equals("find_zip_num")) {
			 action = new FindZipNumAction();
		 }else if (command.equals("join")) {
			 action = new JoinAction();
		 }else if (command.equals("login_form")) {
			 action = new LoginFormAction();
		 }else if (command.equals("login")) {
			 action = new LoginAction();
		 }else if (command.equals("index")) {
			 action = new IndexAction();
		 }else if (command.equals("logout")) {
			 action = new LogoutAction();
		 }
		// 중복되는
		return action;
	}
}