class FightController < ApplicationController
  def index

    #User is connected
    if session[:user_id]
      @current_user = User.find(session[:user_id])

      #Rendering Linguini view
      if @current_user.name == 'Linguini'
        @pastries = Pastry.where.not(name:'Fruits')
        render 'linguiniView'
      #Rendering Chief of Hapiness view
      elsif @current_user.name == 'ChiefOfHapiness'
        @fights = Fight.all
        @pastries = Pastry.all
        @employees = Employee.all
        @fightemployees = Fightemployee.all
        render 'chiefOfHapinessView'
      #Not Linguini, not Chief, error in login
      else
        flash[:info] = "Vous êtes ni Linguini ni la chief of hapiness. Qui êtes vous ?"
        session[:user_id] = nil
        redirect_to "/login"
      end

    #User is not connected
    else
      flash[:info] = "Vous devez être connecté pour accéder à cette page"
      redirect_to "/login"
    end

  end

  def linguiniSubmited

    if params[:date] < Time.current
      flash[:info] = "La date ne peut pas être dans le passé ou aujourd'hui !"
    else

        if params[:pastry1] == params[:pastry2]
          flash[:info] = "Tu ne peux pas faire combattre les mêmes pâtisseries"
        else
          Fight.create date:params[:date], pastry1:params[:pastry1], pastry2:params[:pastry2]
          flash[:sucess] = "Le fight a bien été créé"
        end
    end

    redirect_to "/fight"

  end

  def chiefSubmited

    #Checking if the fruits are the same
    arrayFruits = []
    arrayFruits << params[:choice3]
    continue = TRUE
    if arrayFruits.include?(params[:choice4]) and params[:numberFruits] == '2'
      continue = FALSE
    end
    arrayFruits << params[:choice4]

    if arrayFruits.include?(params[:choice5]) and params[:numberFruits] == '3'
      continue = FALSE
    end

    if !continue
      flash[:info] =  "Tu ne peux pas faire combattre 2 fois la même personne avec les fruits !"
    else
      flash[:sucess] = "Le fight est validé !"

      Fightemployee.create id_fight:params[:fight_id], id_employee:params[:choice1], customization:params[:custom1]
      Fightemployee.create id_fight:params[:fight_id], id_employee:params[:choice2], customization:params[:custom2]

      if params[:numberFruits] == '1'
        Fightemployee.create id_fight:params[:fight_id], id_employee:params[:choice3]
      elsif params[:numberFruits] == '2'
        Fightemployee.create id_fight:params[:fight_id], id_employee:params[:choice4]
      elsif params[:numberFruits] == '3'
        Fightemployee.create id_fight:params[:fight_id], id_employee:params[:choice5]
      end

      Fight.find(params[:fight_id]).update choiceDone:TRUE

    end
    redirect_to "/fight"
  end

end
