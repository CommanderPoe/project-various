#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"


echo -e "\n~~~~~ Welcome to El Salon ~~~~~" 

echo -e "\nFind a list of services and select one\n"

# Main menu 
SERVICES_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  # getting services from db
  SERVICES=$($PSQL "SELECT service_id, name FROM services")

  # read & display services
  echo "$SERVICES" | while read SERVICE_ID BAR S_NAME
  do
    echo "$SERVICE_ID) $S_NAME"
  done

  # selecting a service
  read SERVICE_ID_SELECTED

  # if not a number
  if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
    then
      # back to service menu
      SERVICES_MENU "Select a proper service."
    else
      # selecting service name
      SERVICE_SELECTED=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")

      # if empty
      if [[ -z $SERVICE_SELECTED ]]
      then
        # send to service menu
        SERVICES_MENU "Select a proper service."
      else
        # get customerinfo
        echo -e "\n What's your phone number?"
        read CUSTOMER_PHONE

        CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")

        # if customer does not exist
        if [[ -z $CUSTOMER_NAME ]]
        then
          # get new name
          echo -e "Please tell me your name:"
          read CUSTOMER_NAME

          
     
     
      fi
  fi

}


SERVICES_MENU 