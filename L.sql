CREATE TABLE "System" (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar,
  "Type" int
);

CREATE TABLE "Numpers" (
  "s_id" int,
  "Numper" varchar,
  PRIMARY KEY ("s_id", "Numper")
);

CREATE TABLE "Addresses" (
  "s_id" int,
  "Address" varchar,
  PRIMARY KEY ("s_id", "Address")
);

CREATE TABLE "Doctor" (
  "Doc_id" int PRIMARY KEY,
  "Specialization" varchar,
  "Password" varchar
);

CREATE TABLE "Patient" (
  "P_id" int PRIMARY KEY,
  "Age" int,
  "gender" boolean,
  "DOB" date
);

CREATE TABLE "Report" (
  "R_id" int PRIMARY KEY,
  "R_audio" voice,
  "R_contant" varchar,
  "R_Date" datetime,
  "Doc_id" int,
  "P_id" int
);

ALTER TABLE "Numpers" ADD FOREIGN KEY ("s_id") REFERENCES "System" ("id");

ALTER TABLE "Addresses" ADD FOREIGN KEY ("s_id") REFERENCES "System" ("id");

ALTER TABLE "Doctor" ADD FOREIGN KEY ("Doc_id") REFERENCES "System" ("id");

ALTER TABLE "Patient" ADD FOREIGN KEY ("P_id") REFERENCES "System" ("id");

ALTER TABLE "Report" ADD FOREIGN KEY ("Doc_id") REFERENCES "Doctor" ("Doc_id");

ALTER TABLE "Report" ADD FOREIGN KEY ("P_id") REFERENCES "Patient" ("P_id");

