package com.missing.controller.action;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.missing.dao.PetDAO;
import com.missing.dto.PetVO;

public class IndexAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {    
    String url = "/index.jsp";
    
    PetDAO PetDAO=com.missing.dao.PetDAO.getInstance();
    ArrayList<PetVO> newPetList = PetDAO.listNewPet();
    ArrayList<PetVO> bestPetList = PetDAO.listBestPet();
    
    request.setAttribute("newPetList", newPetList);
    request.setAttribute("bestPetList", bestPetList);
    
    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
    dispatcher.forward(request, response);
  }
}
