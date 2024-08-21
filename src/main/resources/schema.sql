CREATE TABLE supplier (
                          supplier_id UUID PRIMARY KEY,                    -- Primary key with UUID type
                          company_name VARCHAR(255) NOT NULL,              -- Company name of the supplier
                          website VARCHAR(255),                            -- Website URL of the supplier
                          location VARCHAR(255) NOT NULL,                  -- Location of the supplier
                          nature_of_business VARCHAR(50) NOT NULL          -- Nature of business (e.g., small_scale, medium_scale, large_scale)
);
CREATE TABLE supplier_manufacturing_processes (
                                                  supplier_id UUID NOT NULL,                       -- Foreign key to supplier
                                                  manufacturing_process VARCHAR(50) NOT NULL,     -- Manufacturing process (e.g., moulding, 3d_printing, casting, coating)
                                                  PRIMARY KEY (supplier_id, manufacturing_process),  -- Composite primary key
                                                  FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);

-- INSERT INTO supplier (supplier_id, company_name, website, location, nature_of_business) VALUES
--                                                                                             ('bce26b2b-f9d5-4a0c-9b4b-88992d17f4b2', 'TechMoulds Inc.', 'http://techmoulds.com', 'Mumbai', 'SMALL_SCALE'),
--                                                                                             ('f22a47ec-4bc1-4d9b-b0c6-d2d9f74b8b15', 'PrintTech Ltd.', 'http://printtech.com', 'Bangalore', 'SMALL_SCALE');
--
-- --
-- --
-- INSERT INTO supplier_manufacturing_processes (supplier_id, manufacturing_process) VALUES
--                                                                                       ('bce26b2b-f9d5-4a0c-9b4b-88992d17f4b2', 'PRINTING_3D'),
--                                                                                       ('bce26b2b-f9d5-4a0c-9b4b-88992d17f4b2', 'COATING'),
--
--                                                                                       ('f22a47ec-4bc1-4d9b-b0c6-d2d9f74b8b15', 'MODELLING'),
--
--                                                                                       ('f22a47ec-4bc1-4d9b-b0c6-d2d9f74b8b15', 'CASTING');



-- Additional supplier entries
INSERT INTO supplier (supplier_id, company_name, website, location, nature_of_business) VALUES
                                                                                            ('a1234567-89ab-4cde-f012-3456789abcde', 'Moulding Masters', 'http://mouldingmasters.com', 'Pune', 'MEDIUM_SCALE'),
                                                                                            ('7e3d6a08-0346-4e44-991f-e470eaa4c90a', 'Moulding Masters', 'http://mouldingmasters.com', 'Pune', 'MEDIUM_SCALE'),
                                                                                            ('a7cc05bd-31fd-4b4d-9793-f456eddf66c1', 'Moulding Masters', 'http://mouldingmasters.com', 'Pune', 'MEDIUM_SCALE'),
                                                                                            ('22cc7fc9-7e7a-4307-b115-e85f161c590f', 'Moulding Masters', 'http://mouldingmasters.com', 'Pune', 'MEDIUM_SCALE'),
                                                                                            ('ac99c8d2-2923-417f-a6a7-fa5b7d7caa59', 'Moulding Masters', 'http://mouldingmasters.com', 'Pune', 'MEDIUM_SCALE'),
                                                                                            ('4013f68b-5139-4480-bc7f-9a58cab23a17', 'Moulding Masters', 'http://mouldingmasters.com', 'Pune', 'MEDIUM_SCALE'),


                                                                                            ('b2345678-90bc-5def-0123-4567890bcdef', 'Coating Creations', 'http://coatingcreations.com', 'Delhi', 'LARGE_SCALE'),
                                                                                            ('c3456789-01cd-6ef0-1234-5678901cdef0', 'Casting Crafts', 'http://castingcrafts.com', 'Chennai', 'SMALL_SCALE'),
                                                                                            ('d4567890-12de-7f01-2345-6789012def01', 'Precision Plastics', 'http://precisionplastics.com', 'Hyderabad', 'MEDIUM_SCALE'),
                                                                                            ('e5678901-23ef-8901-3456-7890123ef012', '3D Dynamics', 'http://3ddynamics.com', 'Ahmedabad', 'SMALL_SCALE'),
                                                                                            ('f6789012-34f0-9012-4567-8901234f0123', 'MetalMoulds Ltd.', 'http://metalmoulds.com', 'Mumbai', 'LARGE_SCALE'),
                                                                                            ('e7701f48-5e79-4d62-b060-456855ae0292', 'PrintPerfect Solutions', 'http://printperfect.com', 'Bangalore', 'MEDIUM_SCALE'),
                                                                                            ('4f053c54-3958-457e-bfdc-a48c06b6c873', 'CoatPro Industries', 'http://coatpro.com', 'Delhi', 'SMALL_SCALE'),
                                                                                            ('ad477f31-7b40-4256-805a-5ccb658c1185', 'ModelWorks', 'http://modelworks.com', 'Chennai', 'LARGE_SCALE'),
                                                                                            ('c68f131a-bf70-4085-9d3b-f7d12133c368', 'Advanced Casting Inc.', 'http://advancedcasting.com', 'Pune', 'MEDIUM_SCALE');

-- Additional supplier_manufacturing_processes entries
INSERT INTO supplier_manufacturing_processes (supplier_id, manufacturing_process) VALUES
                                                                                      ('a1234567-89ab-4cde-f012-3456789abcde', 'COATING'),
                                                                                      ('a1234567-89ab-4cde-f012-3456789abcde', 'MODELLING'),

                                                                                      ('7e3d6a08-0346-4e44-991f-e470eaa4c90a', 'MODELLING'),
                                                                                      ('a7cc05bd-31fd-4b4d-9793-f456eddf66c1', 'MODELLING'),
                                                                                      ('22cc7fc9-7e7a-4307-b115-e85f161c590f', 'MODELLING'),
                                                                                      ('ac99c8d2-2923-417f-a6a7-fa5b7d7caa59', 'MODELLING'),
                                                                                      ('4013f68b-5139-4480-bc7f-9a58cab23a17', 'MODELLING'),


                                                                                      ('b2345678-90bc-5def-0123-4567890bcdef', 'CASTING'),
                                                                                      ('b2345678-90bc-5def-0123-4567890bcdef', 'COATING'),
--
                                                                                      ('c3456789-01cd-6ef0-1234-5678901cdef0', 'CASTING'),
                                                                                      ('c3456789-01cd-6ef0-1234-5678901cdef0', 'COATING'),

                                                                                      ('d4567890-12de-7f01-2345-6789012def01', 'PRINTING_3D'),
                                                                                      ('d4567890-12de-7f01-2345-6789012def01', 'CASTING'),

                                                                                      ('e5678901-23ef-8901-3456-7890123ef012', 'PRINTING_3D'),
                                                                                      ('e5678901-23ef-8901-3456-7890123ef012', 'CASTING'),

                                                                                      ('f6789012-34f0-9012-4567-8901234f0123', 'COATING'),
                                                                                      ('f6789012-34f0-9012-4567-8901234f0123', 'CASTING'),
--
                                                                                      ('e7701f48-5e79-4d62-b060-456855ae0292', 'PRINTING_3D'),
                                                                                      ('e7701f48-5e79-4d62-b060-456855ae0292', 'CASTING'),

                                                                                      ('4f053c54-3958-457e-bfdc-a48c06b6c873', 'COATING'),
                                                                                      ('4f053c54-3958-457e-bfdc-a48c06b6c873', 'MOULDING'),

                                                                                      ('ad477f31-7b40-4256-805a-5ccb658c1185', 'CASTING'),
                                                                                      ('ad477f31-7b40-4256-805a-5ccb658c1185', 'MODELLING'),

                                                                                      ('c68f131a-bf70-4085-9d3b-f7d12133c368', 'CASTING'),
                                                                                      ('c68f131a-bf70-4085-9d3b-f7d12133c368', 'PRINTING_3D');
