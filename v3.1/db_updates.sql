DROP TABLE  cp_coord_view;
DROP TABLE  cpr_extension_records_view;
DROP TABLE  cpr_view;
DROP TABLE  os_cp_cust_field_extns_view;
DROP TABLE  os_part_cust_field_extns_view;
DROP TABLE  os_spec_cust_field_extns_view;
DROP TABLE  os_storage_cont_stats_view;
DROP TABLE  os_visit_cust_field_extns_view;
DROP TABLE  rbac_subject_access_view;
DROP TABLE  scg_extn_records_view;
DROP TABLE  specimen_extn_records_view;

--SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE catissue_auth_domains DROP FOREIGN KEY FK_provider_ID;
ALTER TABLE catissue_permissible_value DROP FOREIGN KEY FK57DDCE1FC56C2B1;

alter table CATISSUE_USER convert to character set utf8 collate utf8_general_ci;
alter table association convert to character set utf8 collate utf8_general_ci;
alter table cat_stor_cont_spec_types convert to character set utf8 collate utf8_general_ci;
alter table categorial_attribute convert to character set utf8 collate utf8_general_ci;
alter table categorial_class convert to character set utf8 collate utf8_general_ci;
alter table category convert to character set utf8 collate utf8_general_ci;
alter table catissue_address convert to character set utf8 collate utf8_general_ci;
alter table catissue_auth_domains convert to character set utf8 collate utf8_general_ci;
alter table catissue_auth_providers convert to character set utf8 collate utf8_general_ci;
alter table catissue_base_shipment convert to character set utf8 collate utf8_general_ci;
alter table catissue_bulk_operation convert to character set utf8 collate utf8_general_ci;
alter table catissue_cancer_research_group convert to character set utf8 collate utf8_general_ci;
alter table catissue_capacity convert to character set utf8 collate utf8_general_ci;
alter table catissue_cde convert to character set utf8 collate utf8_general_ci;
alter table catissue_cell_req_specimen convert to character set utf8 collate utf8_general_ci;
alter table catissue_cell_spe_review_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_cell_specimen convert to character set utf8 collate utf8_general_ci;
alter table catissue_clinical_diagnosis convert to character set utf8 collate utf8_general_ci;
alter table catissue_coll_coordinators convert to character set utf8 collate utf8_general_ci;
alter table catissue_coll_distribution_rel convert to character set utf8 collate utf8_general_ci;
alter table catissue_coll_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_coll_prot_event convert to character set utf8 collate utf8_general_ci;
alter table catissue_coll_prot_reg convert to character set utf8 collate utf8_general_ci;
alter table catissue_collection_protocol convert to character set utf8 collate utf8_general_ci;
alter table catissue_concept convert to character set utf8 collate utf8_general_ci;
alter table catissue_concept_classificatn convert to character set utf8 collate utf8_general_ci;
alter table catissue_concept_referent convert to character set utf8 collate utf8_general_ci;
alter table catissue_consent_tier convert to character set utf8 collate utf8_general_ci;
alter table catissue_consent_tier_response convert to character set utf8 collate utf8_general_ci;
alter table catissue_consent_tier_status convert to character set utf8 collate utf8_general_ci;
alter table catissue_cont_holds_sparrtype convert to character set utf8 collate utf8_general_ci;
alter table catissue_container convert to character set utf8 collate utf8_general_ci;
alter table catissue_container_cps convert to character set utf8 collate utf8_general_ci;
alter table catissue_container_type convert to character set utf8 collate utf8_general_ci;
alter table catissue_cp_extapp_study_rel convert to character set utf8 collate utf8_general_ci;
alter table catissue_cp_req_specimen convert to character set utf8 collate utf8_general_ci;
alter table catissue_cp_site_roles convert to character set utf8 collate utf8_general_ci;
alter table catissue_cp_studyformcontext convert to character set utf8 collate utf8_general_ci;
alter table catissue_cp_user_roles convert to character set utf8 collate utf8_general_ci;
alter table catissue_deidentified_report convert to character set utf8 collate utf8_general_ci;
alter table catissue_department convert to character set utf8 collate utf8_general_ci;
alter table catissue_derieved_sp_ord_item convert to character set utf8 collate utf8_general_ci;
alter table catissue_disposal_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_distributed_item convert to character set utf8 collate utf8_general_ci;
alter table catissue_distribution convert to character set utf8 collate utf8_general_ci;
alter table catissue_distribution_protocol convert to character set utf8 collate utf8_general_ci;
alter table catissue_distribution_spec_req convert to character set utf8 collate utf8_general_ci;
alter table catissue_embedded_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_equipment convert to character set utf8 collate utf8_general_ci;
alter table catissue_exist_sp_ar_ord_item convert to character set utf8 collate utf8_general_ci;
alter table catissue_existing_sp_ord_item convert to character set utf8 collate utf8_general_ci;
alter table catissue_external_application convert to character set utf8 collate utf8_general_ci;
alter table catissue_external_identifier convert to character set utf8 collate utf8_general_ci;
alter table catissue_fixed_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_fluid_req_specimen convert to character set utf8 collate utf8_general_ci;
alter table catissue_fluid_spe_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_fluid_specimen convert to character set utf8 collate utf8_general_ci;
alter table catissue_form_context convert to character set utf8 collate utf8_general_ci;
alter table catissue_form_record_entry convert to character set utf8 collate utf8_general_ci;
alter table catissue_frozen_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_identified_report convert to character set utf8 collate utf8_general_ci;
alter table catissue_image convert to character set utf8 collate utf8_general_ci;
alter table catissue_import_queries_log convert to character set utf8 collate utf8_general_ci;
alter table catissue_in_out_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_institution convert to character set utf8 collate utf8_general_ci;
alter table catissue_interface_column_data convert to character set utf8 collate utf8_general_ci;
alter table catissue_ldap_details convert to character set utf8 collate utf8_general_ci;
alter table catissue_login_audit_event_log convert to character set utf8 collate utf8_general_ci;
alter table catissue_mol_req_specimen convert to character set utf8 collate utf8_general_ci;
alter table catissue_mol_spe_review_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_molecular_specimen convert to character set utf8 collate utf8_general_ci;
alter table catissue_new_sp_ar_order_item convert to character set utf8 collate utf8_general_ci;
alter table catissue_new_spec_ord_item convert to character set utf8 collate utf8_general_ci;
alter table catissue_nextgen_audit_details convert to character set utf8 collate utf8_general_ci;
alter table catissue_notification_status convert to character set utf8 collate utf8_general_ci;
alter table catissue_order convert to character set utf8 collate utf8_general_ci;
alter table catissue_order_item convert to character set utf8 collate utf8_general_ci;
alter table catissue_part_medical_id convert to character set utf8 collate utf8_general_ci;
alter table catissue_participant convert to character set utf8 collate utf8_general_ci;
alter table catissue_participant_rec_ntry convert to character set utf8 collate utf8_general_ci;
alter table catissue_password convert to character set utf8 collate utf8_general_ci;
alter table catissue_path_case_order_item convert to character set utf8 collate utf8_general_ci;
alter table catissue_pathology_report convert to character set utf8 collate utf8_general_ci;
alter table catissue_permissible_value convert to character set utf8 collate utf8_general_ci;
alter table catissue_privileges convert to character set utf8 collate utf8_general_ci;
alter table catissue_procedure_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_qfolder_share_setting convert to character set utf8 collate utf8_general_ci;
alter table catissue_quarantine_params convert to character set utf8 collate utf8_general_ci;
alter table catissue_query_audit_logs convert to character set utf8 collate utf8_general_ci;
alter table catissue_query_editlink_cols convert to character set utf8 collate utf8_general_ci;
alter table catissue_query_folder_queries convert to character set utf8 collate utf8_general_ci;
alter table catissue_query_folders convert to character set utf8 collate utf8_general_ci;
alter table catissue_query_table_data convert to character set utf8 collate utf8_general_ci;
alter table catissue_race convert to character set utf8 collate utf8_general_ci;
alter table catissue_received_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_related_tables_map convert to character set utf8 collate utf8_general_ci;
alter table catissue_report_bicontent convert to character set utf8 collate utf8_general_ci;
alter table catissue_report_content convert to character set utf8 collate utf8_general_ci;
alter table catissue_report_particip_rel convert to character set utf8 collate utf8_general_ci;
alter table catissue_report_queue convert to character set utf8 collate utf8_general_ci;
alter table catissue_report_section convert to character set utf8 collate utf8_general_ci;
alter table catissue_report_textcontent convert to character set utf8 collate utf8_general_ci;
alter table catissue_report_xmlcontent convert to character set utf8 collate utf8_general_ci;
alter table catissue_reported_problem convert to character set utf8 collate utf8_general_ci;
alter table catissue_review_params convert to character set utf8 collate utf8_general_ci;
alter table catissue_role_privileges convert to character set utf8 collate utf8_general_ci;
alter table catissue_roles convert to character set utf8 collate utf8_general_ci;
alter table catissue_saved_queries convert to character set utf8 collate utf8_general_ci;
alter table catissue_scg_rec_ntry convert to character set utf8 collate utf8_general_ci;
alter table catissue_search_display_data convert to character set utf8 collate utf8_general_ci;
alter table catissue_semantic_type convert to character set utf8 collate utf8_general_ci;
alter table catissue_shipment convert to character set utf8 collate utf8_general_ci;
alter table catissue_shipment_containr_rel convert to character set utf8 collate utf8_general_ci;
alter table catissue_shipment_request convert to character set utf8 collate utf8_general_ci;
alter table catissue_site convert to character set utf8 collate utf8_general_ci;
alter table catissue_site_coordinators convert to character set utf8 collate utf8_general_ci;
alter table catissue_site_cp convert to character set utf8 collate utf8_general_ci;
alter table catissue_site_users convert to character set utf8 collate utf8_general_ci;
alter table catissue_sp_array_order_item convert to character set utf8 collate utf8_general_ci;
alter table catissue_speci_array_content convert to character set utf8 collate utf8_general_ci;
alter table catissue_speci_shipmnt_req_rel convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_array convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_array_type convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_coll_group convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_hierarchy convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_label_count convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_order_item convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_print_data convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_rec_ntry convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_requirement convert to character set utf8 collate utf8_general_ci;
alter table catissue_specimen_type convert to character set utf8 collate utf8_general_ci;
alter table catissue_spun_event_parameters convert to character set utf8 collate utf8_general_ci;
alter table catissue_st_cont_coll_prot_rel convert to character set utf8 collate utf8_general_ci;
alter table catissue_st_cont_st_type_rel convert to character set utf8 collate utf8_general_ci;
alter table catissue_stor_cont_spec_class convert to character set utf8 collate utf8_general_ci;
alter table catissue_stor_cont_spec_type convert to character set utf8 collate utf8_general_ci;
alter table catissue_stor_cont_utilization convert to character set utf8 collate utf8_general_ci;
alter table catissue_stor_type_holds_type convert to character set utf8 collate utf8_general_ci;
alter table catissue_stor_type_spec_class convert to character set utf8 collate utf8_general_ci;
alter table catissue_stor_type_spec_type convert to character set utf8 collate utf8_general_ci;
alter table catissue_storage_container convert to character set utf8 collate utf8_general_ci;
alter table catissue_storage_containers convert to character set utf8 collate utf8_general_ci;
alter table catissue_storage_type convert to character set utf8 collate utf8_general_ci;
alter table catissue_storty_holds_sparrty convert to character set utf8 collate utf8_general_ci;
alter table catissue_study_form_context convert to character set utf8 collate utf8_general_ci;
alter table catissue_table_relation convert to character set utf8 collate utf8_general_ci;
alter table catissue_thaw_event_parameters convert to character set utf8 collate utf8_general_ci;
alter table catissue_tis_spe_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_tissue_req_specimen convert to character set utf8 collate utf8_general_ci;
alter table catissue_tissue_specimen convert to character set utf8 collate utf8_general_ci;
alter table catissue_transfer_event_param convert to character set utf8 collate utf8_general_ci;
alter table catissue_user_cp convert to character set utf8 collate utf8_general_ci;
alter table catissue_user_sites convert to character set utf8 collate utf8_general_ci;
alter table commons_graph convert to character set utf8 collate utf8_general_ci;
alter table commons_graph_edge convert to character set utf8 collate utf8_general_ci;
alter table commons_graph_to_edges convert to character set utf8 collate utf8_general_ci;
alter table commons_graph_to_vertices convert to character set utf8 collate utf8_general_ci;
alter table csm_application convert to character set utf8 collate utf8_general_ci;
alter table csm_group convert to character set utf8 collate utf8_general_ci;
alter table csm_migrate_user convert to character set utf8 collate utf8_general_ci;
alter table csm_pg_pe convert to character set utf8 collate utf8_general_ci;
alter table csm_privilege convert to character set utf8 collate utf8_general_ci;
alter table csm_protection_element convert to character set utf8 collate utf8_general_ci;
alter table csm_protection_group convert to character set utf8 collate utf8_general_ci;
alter table csm_role convert to character set utf8 collate utf8_general_ci;
alter table csm_role_privilege convert to character set utf8 collate utf8_general_ci;
alter table csm_user convert to character set utf8 collate utf8_general_ci;
alter table csm_user_group convert to character set utf8 collate utf8_general_ci;
alter table csm_user_group_role_pg convert to character set utf8 collate utf8_general_ci;
alter table csm_user_pe convert to character set utf8 collate utf8_general_ci;
alter table curated_path convert to character set utf8 collate utf8_general_ci;
alter table curated_path_to_path convert to character set utf8 collate utf8_general_ci;
alter table de_coll_attr_record_values convert to character set utf8 collate utf8_general_ci;
alter table de_e_1227 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1230 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1236 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1241 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1244 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1249 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1254 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1258 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1264 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1271 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1274 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1277 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1279 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1283 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1290 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1295 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1297 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1300 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1318 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1322 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1325 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1332 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1336 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1339 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1344 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1349 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1357 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1359 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1363 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1365 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1369 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1375 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1377 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1381 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1386 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1400 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1404 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1408 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1414 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1421 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1427 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1432 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1434 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1437 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1440 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1447 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1451 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1454 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1458 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1461 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1468 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1473 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1479 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1484 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1489 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1497 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1501 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1505 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1508 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1513 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1516 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1518 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1524 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1527 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1533 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1536 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1539 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1541 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1545 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1551 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1556 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1559 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1562 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1566 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1570 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1574 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1577 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1584 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1589 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1593 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1600 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1605 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1608 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1612 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1615 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1620 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1625 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1631 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1640 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1644 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1648 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1652 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1659 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1663 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1667 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1673 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1676 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1680 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1685 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1690 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1693 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1697 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1701 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1705 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1709 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1715 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1723 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1727 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1731 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1735 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1749 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1754 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1762 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1765 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1770 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1773 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1777 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1781 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1784 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1788 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1794 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1797 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1828 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1836 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1838 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1841 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1845 convert to character set utf8 collate utf8_general_ci;
alter table de_e_1847 convert to character set utf8 collate utf8_general_ci;
alter table de_file_attr_record_values convert to character set utf8 collate utf8_general_ci;
alter table de_object_attr_record_values convert to character set utf8 collate utf8_general_ci;
alter table dyextn_abstr_contain_ctr convert to character set utf8 collate utf8_general_ci;
alter table dyextn_abstract_entity convert to character set utf8 collate utf8_general_ci;
alter table dyextn_abstract_form_context convert to character set utf8 collate utf8_general_ci;
alter table dyextn_abstract_metadata convert to character set utf8 collate utf8_general_ci;
alter table dyextn_abstract_record_entry convert to character set utf8 collate utf8_general_ci;
alter table dyextn_asso_display_attr convert to character set utf8 collate utf8_general_ci;
alter table dyextn_association convert to character set utf8 collate utf8_general_ci;
alter table dyextn_attribute convert to character set utf8 collate utf8_general_ci;
alter table dyextn_attribute_record convert to character set utf8 collate utf8_general_ci;
alter table dyextn_attribute_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_barr_concept_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_base_abstract_attribute convert to character set utf8 collate utf8_general_ci;
alter table dyextn_boolean_concept_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_boolean_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_byte_array_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_cadsr_value_domain_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_cadsrde convert to character set utf8 collate utf8_general_ci;
alter table dyextn_calculated_attribute convert to character set utf8 collate utf8_general_ci;
alter table dyextn_cat_asso_ctl convert to character set utf8 collate utf8_general_ci;
alter table dyextn_category convert to character set utf8 collate utf8_general_ci;
alter table dyextn_category_association convert to character set utf8 collate utf8_general_ci;
alter table dyextn_category_attribute convert to character set utf8 collate utf8_general_ci;
alter table dyextn_category_entity convert to character set utf8 collate utf8_general_ci;
alter table dyextn_check_box convert to character set utf8 collate utf8_general_ci;
alter table dyextn_column_properties convert to character set utf8 collate utf8_general_ci;
alter table dyextn_combobox convert to character set utf8 collate utf8_general_ci;
alter table dyextn_constraint_properties convert to character set utf8 collate utf8_general_ci;
alter table dyextn_constraintkey_prop convert to character set utf8 collate utf8_general_ci;
alter table dyextn_container convert to character set utf8 collate utf8_general_ci;
alter table dyextn_containers convert to character set utf8 collate utf8_general_ci;
alter table dyextn_containment_control convert to character set utf8 collate utf8_general_ci;
alter table dyextn_control convert to character set utf8 collate utf8_general_ci;
alter table dyextn_data_element convert to character set utf8 collate utf8_general_ci;
alter table dyextn_data_grid convert to character set utf8 collate utf8_general_ci;
alter table dyextn_database_properties convert to character set utf8 collate utf8_general_ci;
alter table dyextn_date_concept_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_date_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_datepicker convert to character set utf8 collate utf8_general_ci;
alter table dyextn_double_concept_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_double_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_entity convert to character set utf8 collate utf8_general_ci;
alter table dyextn_entity_group convert to character set utf8 collate utf8_general_ci;
alter table dyextn_entity_map convert to character set utf8 collate utf8_general_ci;
alter table dyextn_entity_map_condns convert to character set utf8 collate utf8_general_ci;
alter table dyextn_entity_map_record convert to character set utf8 collate utf8_general_ci;
alter table dyextn_entiy_composite_key_rel convert to character set utf8 collate utf8_general_ci;
alter table dyextn_file convert to character set utf8 collate utf8_general_ci;
alter table dyextn_file_extensions convert to character set utf8 collate utf8_general_ci;
alter table dyextn_file_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_file_upload convert to character set utf8 collate utf8_general_ci;
alter table dyextn_float_concept_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_float_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_form_context convert to character set utf8 collate utf8_general_ci;
alter table dyextn_form_ctrl_notes convert to character set utf8 collate utf8_general_ci;
alter table dyextn_id_generator convert to character set utf8 collate utf8_general_ci;
alter table dyextn_id_seq convert to character set utf8 collate utf8_general_ci;
alter table dyextn_integer_concept_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_integer_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_list_box convert to character set utf8 collate utf8_general_ci;
alter table dyextn_long_concept_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_long_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_multiselect_check_box convert to character set utf8 collate utf8_general_ci;
alter table dyextn_numeric_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_object_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_path convert to character set utf8 collate utf8_general_ci;
alter table dyextn_path_asso_rel convert to character set utf8 collate utf8_general_ci;
alter table dyextn_permissible_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_primitive_attribute convert to character set utf8 collate utf8_general_ci;
alter table dyextn_radiobutton convert to character set utf8 collate utf8_general_ci;
alter table dyextn_role convert to character set utf8 collate utf8_general_ci;
alter table dyextn_rule convert to character set utf8 collate utf8_general_ci;
alter table dyextn_rule_parameter convert to character set utf8 collate utf8_general_ci;
alter table dyextn_select_control convert to character set utf8 collate utf8_general_ci;
alter table dyextn_semantic_property convert to character set utf8 collate utf8_general_ci;
alter table dyextn_short_concept_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_short_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_skip_logic_attribute convert to character set utf8 collate utf8_general_ci;
alter table dyextn_sql_audit convert to character set utf8 collate utf8_general_ci;
alter table dyextn_string_concept_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_string_type_info convert to character set utf8 collate utf8_general_ci;
alter table dyextn_table_properties convert to character set utf8 collate utf8_general_ci;
alter table dyextn_tagged_value convert to character set utf8 collate utf8_general_ci;
alter table dyextn_textarea convert to character set utf8 collate utf8_general_ci;
alter table dyextn_textfield convert to character set utf8 collate utf8_general_ci;
alter table dyextn_userdef_de_value_rel convert to character set utf8 collate utf8_general_ci;
alter table dyextn_userdefined_de convert to character set utf8 collate utf8_general_ci;
alter table dyextn_view convert to character set utf8 collate utf8_general_ci;
alter table id_table convert to character set utf8 collate utf8_general_ci;
alter table inter_model_association convert to character set utf8 collate utf8_general_ci;
alter table intra_model_association convert to character set utf8 collate utf8_general_ci;
alter table job_details convert to character set utf8 collate utf8_general_ci;
alter table key_seq_generator convert to character set utf8 collate utf8_general_ci;
alter table os_department convert to character set utf8 collate utf8_general_ci;
alter table os_distribution_protocol convert to character set utf8 collate utf8_general_ci;
alter table os_specimen_print_rule convert to character set utf8 collate utf8_general_ci;
alter table os_user convert to character set utf8 collate utf8_general_ci;
alter table path convert to character set utf8 collate utf8_general_ci;
alter table query convert to character set utf8 collate utf8_general_ci;
alter table query_arithmetic_operand convert to character set utf8 collate utf8_general_ci;
alter table query_base_expr_opnd convert to character set utf8 collate utf8_general_ci;
alter table query_base_expression convert to character set utf8 collate utf8_general_ci;
alter table query_baseexpr_to_connectors convert to character set utf8 collate utf8_general_ci;
alter table query_condition convert to character set utf8 collate utf8_general_ci;
alter table query_condition_values convert to character set utf8 collate utf8_general_ci;
alter table query_connector convert to character set utf8 collate utf8_general_ci;
alter table query_constraint_to_expr convert to character set utf8 collate utf8_general_ci;
alter table query_constraints convert to character set utf8 collate utf8_general_ci;
alter table query_custom_formula convert to character set utf8 collate utf8_general_ci;
alter table query_expression convert to character set utf8 collate utf8_general_ci;
alter table query_formula_rhs convert to character set utf8 collate utf8_general_ci;
alter table query_inter_model_association convert to character set utf8 collate utf8_general_ci;
alter table query_intra_model_association convert to character set utf8 collate utf8_general_ci;
alter table query_join_graph convert to character set utf8 collate utf8_general_ci;
alter table query_model_association convert to character set utf8 collate utf8_general_ci;
alter table query_operand convert to character set utf8 collate utf8_general_ci;
alter table query_output_attribute convert to character set utf8 collate utf8_general_ci;
alter table query_output_term convert to character set utf8 collate utf8_general_ci;
alter table query_parameter convert to character set utf8 collate utf8_general_ci;
alter table query_parameterized_query convert to character set utf8 collate utf8_general_ci;
alter table query_query_entity convert to character set utf8 collate utf8_general_ci;
alter table query_rule_cond convert to character set utf8 collate utf8_general_ci;
alter table query_subexpr_operand convert to character set utf8 collate utf8_general_ci;
alter table query_to_output_terms convert to character set utf8 collate utf8_general_ci;
alter table query_to_parameters convert to character set utf8 collate utf8_general_ci;

ALTER TABLE catissue_auth_domains ADD CONSTRAINT FK_provider_ID FOREIGN KEY (AUTH_TYPE) REFERENCES catissue_auth_providers(AUTH_TYPE);
ALTER TABLE catissue_permissible_value ADD CONSTRAINT FK57DDCE1FC56C2B1 FOREIGN KEY (PUBLIC_ID) REFERENCES catissue_cde(PUBLIC_ID);

CREATE VIEW cpr_view AS
	select 
		  `cpr`.`IDENTIFIER` AS `CPR_ID`
		, `cpr`.`COLLECTION_PROTOCOL_ID` AS `CP_ID`
		, `cpr`.`PARTICIPANT_ID` AS `PARTICIPANT_ID`
		, `p`.`FIRST_NAME` AS `FIRST_NAME`
		, `p`.`MIDDLE_NAME` AS `MIDDLE_NAME`
		, `p`.`LAST_NAME` AS `LAST_NAME`
		, `p`.`BIRTH_DATE` AS `DOB`
		, `p`.`SOCIAL_SECURITY_NUMBER` AS `SSN`
		, `cpr`.`ACTIVITY_STATUS` AS `ACTIVITY_STATUS`
		, `p`.`GENDER` AS `GENDER`
		, `p`.`GENOTYPE` AS `GENOTYPE`
		, `cpr`.`REGISTRATION_DATE` AS `REGISTRATION_DATE`
		, `cpr`.`PROTOCOL_PARTICIPANT_ID` AS `PPID`
		, `p`.`VITAL_STATUS` AS `VITAL_STATUS`
		, `p`.`DEATH_DATE` AS `DEATH_DATE`
		, `p`.`ETHNICITY` AS `ETHNICITY`
		, `cpr`.`BARCODE` AS `BARCODE`
		, `cpr`.`CONSENT_SIGN_DATE` AS `CONSENT_SIGN_DATE`
		, `cpr`.`CONSENT_WITNESS` AS `CONSENT_WITNESS`
		, `cpr`.`CONSENT_DOC_URL` AS `CONSENT_DOC_URL`
	 from (`catissue_coll_prot_reg` `cpr` join `catissue_participant` `p` on((`cpr`.`PARTICIPANT_ID` = `p`.`IDENTIFIER`)))
;


--SET FOREIGN_KEY_CHECKS=1;