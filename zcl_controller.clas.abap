CLASS zcl_controller DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_mvc.

    METHODS constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: o_model TYPE REF TO zcl_model,
          o_view  TYPE REF TO zcl_view.

    ALIASES: get_data FOR zif_mvc~get_data,
             show_data FOR zif_mvc~show_data.
ENDCLASS.



CLASS zcl_controller IMPLEMENTATION.

  METHOD constructor.

    me->o_model = NEW #( ).
    me->o_view = NEW #( ).

  ENDMETHOD.

  METHOD zif_mvc~get_data.

    me->o_model->select_from_db( ).

  ENDMETHOD.

  METHOD zif_mvc~show_data.

    me->o_view->display_selection( ).

  ENDMETHOD.

  METHOD zif_mvc~execute.

    me->get_data( ).
    me->show_data( ).

  ENDMETHOD.

ENDCLASS.
