INTERFACE zif_mvc
  PUBLIC .

  "! <p class="shorttext synchronized" lang="pt">Get data from database</p>
  METHODS get_data
    RAISING zcx_mvc.

  "! <p class="shorttext synchronized" lang="pt">Show selected data</p>
  METHODS show_data
    RAISING zcx_mvc.

  "! <p class="shorttext synchronized" lang="pt">Start the controller</p>
  METHODS execute
    RAISING zcx_mvc.

ENDINTERFACE.
