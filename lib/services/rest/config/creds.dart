String creds_client_id = "606692bc-bdf4-45d9-9886-97acdfded3e4";
String creds_client_secret = "A8qA3bP5uK6mF7tN7hR2fP7wK3dV4qD7nE3fF1hR1wV3hU4gI3";
String creds_partner_username = "partner_sb";
String creds_partner_password = "p@ssw0rd";


/*

https://api-uat.unionbankph.com/partners/sb


{
    "msg": "Test Account successfully created.",
    "data": {
        "user": {
            "username": "REMO_username",
            "password": "password"
        },
        "account": {
            "account_number": "100338737765",
            "card_number": "4190200014796670",
            "account_name": "REMO Account",
            "account_code": "57487",
            "account_type": "Savings Account",
            "status": "Active",
            "branch": "9435",
            "balance": "100000"
        }
    },
    "code": 200,
    "status": 1
}

{
    "msg": "Test Account successfully created.",
    "data": {
        "user": {
            "username": "HOSPITAL_1_username",
            "password": "password"
        },
        "account": {
            "account_number": "100875068243",
            "card_number": "4190200095849881",
            "account_name": "HOSPITAL 1 Account",
            "account_code": "49430",
            "account_type": "Savings Account",
            "status": "Active",
            "branch": "8143",
            "balance": "100000"
        }
    },
    "code": 200,
    "status": 1
}


{
    "msg": "Test Account successfully created.",
    "data": {
        "user": {
            "username": "HOSPITAL_2_username",
            "password": "password"
        },
        "account": {
            "account_number": "103180828438",
            "card_number": "4190200042021558",
            "account_name": "HOSPITAL 2 Account",
            "account_code": "46202",
            "account_type": "Savings Account",
            "status": "Active",
            "branch": "8166",
            "balance": "100000"
        }
    },
    "code": 200,
    "status": 1
}


{
    "msg": "Test Account successfully created.",
    "data": {
        "user": {
            "username": "HOSPITAL_3_username",
            "password": "password"
        },
        "account": {
            "account_number": "102161329658",
            "card_number": "4190200072140180",
            "account_name": "HOSPITAL 3 Account",
            "account_code": "40764",
            "account_type": "Savings Account",
            "status": "Active",
            "branch": "9590",
            "balance": "100000"
        }
    },
    "code": 200,
    "status": 1
}

{
    "msg": "Test Account successfully created.",
    "data": {
        "user": {
            "username": "PATIENT_username",
            "password": "password"
        },
        "account": {
            "account_number": "102785036627",
            "card_number": "4190200064986538",
            "account_name": "PATIENT Account",
            "account_code": "31585",
            "account_type": "Savings Account",
            "status": "Active",
            "branch": "7439",
            "balance": "100000"
        }
    },
    "code": 200,
    "status": 1
}


{
    "token_type": "bearer",
    "access_token": "AAEkNjA2NjkyYmMtYmRmNC00NWQ5LTk4ODYtOTdhY2RmZGVkM2U0xmCDGxO45y4MjdepVgeyaV3hVbE839rPU-xc5OGqBFOJKbpsDHGC4D_ZFsIskr3_35dT1S1nMQnoaLMB6OmpS9Pv5suVEFmmsqIrVWYy5LM3tYDih1roM4vzJ7CpkFrPnImUT0D4g8ZxhhmopeP_hQFOmQNfsOrCM4eHtw7aj6ctk6YnB9KadGosq__LFzJWnAJF46IJ0Vu--gIegWJxlmATaIzVcw9bxlVpKeXASc-xLNNegf8BrBle1mKEjm4ghks8p5nLW3kh-xalFfqU8WC6y7FCh8P1Tw1n3q6VS1vHIHqTTVRRomP1Cu0aHPYqJjgV5lqJjTjWaMdC0l4DOw",
    "metadata": "a:rY5CFD9ja3as2I/pjQdhcNEosTVruvtLvolWiih45ofHAsYcb0GRgD2LUu/Th5pw69mgsbHHB84Iit4a3ADFxoNPhqJZtXW06rzzdR5IXSKZDfjDQyhpZ5rF3s5DJIhaJEqXu5CZoYibRR8RenzN7b790hCyuWke+xpf",
    "expires_in": 3600,
    "scope": "transfers",
    "refresh_token": "AAEDYXR8ne6My_z6bwFKueAMV3yDkOv8XxAH0g0ai_68YDzQGcK1fwS4Nh61DiAW2-jx-CEqtSets4fb1F4DjYPNfNNvO-TXAPzE18Aja5nI6JNZXtn65O4wFVl31UH5SRLvf4b-0x6S58XjuldC6lt8RFCOf2ctsyaJtLu60X0ieLZcvjpve1YQ7Z1_JJOBPlOcLBwO7AARNW1p-fEWiXw2rdFOg1xBk9QpEpMrMEjepmttZsfTgGgApK-EXI2xQg4tYTZr0NOlvTRhxfkdvQJC4xZi9dtxQMdC46C14PG7Qm7htNzeFFbRFzbVy9RwXGeHrhTWiUN5z7UgbO2obHol"
}
{
    "token_type": "bearer",
    "access_token": "AAEkNjA2NjkyYmMtYmRmNC00NWQ5LTk4ODYtOTdhY2RmZGVkM2U0DiQAt8TTA--5pQNvmkwHUhZZ95t7IAz8GSB5CQnDFhgX-spYn6jCyuuKdSn8SUuGam164y5gwVOTs4bSrNS-15DnebWNVcu76MZL7lhB9VeflnTVbT590BO6Glxahjj-nmtWAuiGAcUcarIxzzJj8NatQR-DwMZQx6v9Lv-V-AAYroIjeLKbMS0vuyfPVwpGtvlLHJK2QHjbFgssx3TV2wVnYNLX9aAIE0ZFIlfi4x_14rtv-nsbrT871xCaP_xTC-KqZxau2m5bZpdKmbMGDYjnuOZhDkChqZPlZ3MaTXbkIEJFBXEK9Dbk9FhMvCR37tSbXalxIZW2dhC7y2_5ow",
    "metadata": "a:rY5CFD9ja3as2I/pjQdhcNEosDJpuvtLvolWiih45odth3k9QPlZoeRl6syMW7CqCOF1lQF2FQaOLyR+UqScRgGpScCQ7pwBLGS2bNouQ/6UPIjSFkc40F31ORE+sVSeB4nH674kzPMd8ouicdOH5x65f/2KvkzxlAaw",
    "expires_in": 3600,
    "scope": "payments",
    "refresh_token": "AAGY1eRnCXmDUKb0v9_7DqnvBCOR7zFhi-XE2o2W3My4S6y6dnJpY2BP9TsLMYaKrls6KmnE78uN4DOTWODFUz4M7eSGqlT8zrerfaKR8jCy3lF0GryOJJYfeSfZiAaLDpqaMwavUhQhp-4OdVD87of4r3ggHLUGojUmrWxjWTnlhN3B07x0F_d0nB-GqKGY4Pkm9t1P38xhNM0hQ1XIqccEh7VE6c0vsqNrn0VaDwc4kNyx7ZdkNIpl_1KhHskw9U9g6RFKzjM85jy5UNrxsX6HEK245st6qNXTNWlx9EZ2XTrNMeID8NpL5ezrSXwVKl3AUMefqHim-pTwAGbstvrT"
}
 */