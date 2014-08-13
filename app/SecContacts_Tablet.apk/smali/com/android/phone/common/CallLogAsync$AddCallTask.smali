.class Lcom/android/phone/common/CallLogAsync$AddCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/common/CallLogAsync$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/common/CallLogAsync;


# direct methods
.method private constructor <init>(Lcom/android/phone/common/CallLogAsync;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallTask;->this$0:Lcom/android/phone/common/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/common/CallLogAsync;Lcom/android/phone/common/CallLogAsync$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/common/CallLogAsync;
    .param p2, "x1"    # Lcom/android/phone/common/CallLogAsync$1;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/android/phone/common/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/common/CallLogAsync;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 495
    check-cast p1, [Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/common/CallLogAsync$AddCallTask;->doInBackground([Lcom/android/phone/common/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/common/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;
    .locals 32
    .param p1, "callList"    # [Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    .prologue
    .line 498
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    .line 499
    .local v21, "count":I
    move/from16 v0, v21

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v29, v0

    .line 500
    .local v29, "result":[Landroid/net/Uri;
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .local v31, "value":Landroid/content/ContentValues;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 505
    .local v30, "salesCode":Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    .line 506
    aget-object v19, p1, v26

    .line 509
    .local v19, "c":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v2, v3, v4}, Lcom/android/phone/common/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/phone/common/EcidContact;

    move-result-object v23

    .line 510
    .local v23, "ecid":Lcom/android/phone/common/EcidContact;
    if-eqz v23, :cond_0

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/common/EcidContact;->getCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    const-string v2, "cityid"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/common/EcidContact;->getCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_0
    const/16 v25, 0x0

    .line 515
    .local v25, "fName":Ljava/lang/String;
    const/16 v27, 0x0

    .line 516
    .local v27, "lName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 517
    .local v18, "bName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 519
    .local v20, "cnapName":Ljava/lang/String;
    if-eqz v23, :cond_1

    .line 520
    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/common/EcidContact;->getFirstName()Ljava/lang/String;

    move-result-object v25

    .line 521
    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/common/EcidContact;->getLastName()Ljava/lang/String;

    move-result-object v27

    .line 522
    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/common/EcidContact;->getBizName()Ljava/lang/String;

    move-result-object v18

    .line 523
    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/common/EcidContact;->getCnapName()Ljava/lang/String;

    move-result-object v20

    .line 526
    :cond_1
    if-eqz v23, :cond_2

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 527
    const-string v2, "fname"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_2
    if-eqz v23, :cond_3

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 531
    const-string v2, "lname"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_3
    if-eqz v23, :cond_4

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 535
    const-string v2, "bname"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_4
    if-eqz v23, :cond_6

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v20, :cond_6

    const-string v2, "Unknown Name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Wireless Caller"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 539
    const-string v2, "LGT"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v2, v3, :cond_6

    .line 541
    :cond_5
    const-string v2, "cnap_name"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_6
    if-eqz v23, :cond_7

    .line 545
    invoke-static {}, Lcom/android/phone/common/EcidContact;->clearEcidContacts()V

    .line 548
    :cond_7
    const-string v2, "date"

    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 549
    const-string v2, "duration"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const/16 v16, 0x15

    .line 555
    .local v16, "MESSAGE_CALL_TYPE":I
    const/16 v13, 0x16

    .line 556
    .local v13, "CMF_CALL_TYPE":I
    const/16 v15, 0x28

    .line 557
    .local v15, "FIND_LOST_PHONE_TYPE":I
    const/16 v14, 0x29

    .line 558
    .local v14, "FIND_LOST_PHONE_TO_OWNER_TYPE":I
    const-string v17, "-4"

    .line 560
    .local v17, "UNKNOWN_PHONE_NUMBER":Ljava/lang/String;
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    const/16 v3, 0x16

    if-eq v2, v3, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    const/16 v3, 0x28

    if-eq v2, v3, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    const/16 v3, 0x29

    if-ne v2, v3, :cond_16

    .line 562
    :cond_8
    const-string v2, "service_type"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    :goto_1
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_b

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "Unknown Name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "Wireless Caller"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 577
    :cond_9
    const-string v2, "LGT"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v2, v3, :cond_b

    .line 578
    :cond_a
    const-string v2, "cnap_name"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_b
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_c

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    .line 583
    const-string v2, "CallLogAsync"

    const-string v3, "AddCallTask - photoring url exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v2, "photoring_uri"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_c
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_d

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    .line 588
    const-string v2, "cdnip_number"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_d
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_e

    .line 592
    const-string v11, "ci_person_id"

    .line 593
    .local v11, "CI_PERSON_ID":Ljava/lang/String;
    const-string v10, "ci_normalizedNumber"

    .line 594
    .local v10, "CI_NORMALIZED_NUMBER":Ljava/lang/String;
    const-string v12, "ci_phoneNumber"

    .line 596
    .local v12, "CI_PHONE_NUMBER":Ljava/lang/String;
    const-string v2, "ci_person_id"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v3, v3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 597
    const-string v2, "ci_normalizedNumber"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v2, "ci_phoneNumber"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .end local v10    # "CI_NORMALIZED_NUMBER":Ljava/lang/String;
    .end local v11    # "CI_PERSON_ID":Ljava/lang/String;
    .end local v12    # "CI_PHONE_NUMBER":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    if-eqz v2, :cond_f

    .line 602
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 605
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 606
    const-string v2, "m_content"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_10
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    if-eqz v2, :cond_11

    .line 614
    const-string v2, "simnum"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simnum is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_11
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 621
    .local v28, "logNumber":Ljava/lang/String;
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v2, v3, :cond_18

    .line 622
    const-string v28, "-2"

    .line 634
    :cond_12
    :goto_2
    const-string v2, "number"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v2, "presentation"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    if-ltz v2, :cond_13

    .line 641
    const-string v2, "sim_id"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    :cond_13
    const-string v2, "remind_me_later_set"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remind_me_later_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v2, "dormant_set"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dormant_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v2, "trigger_restart_min_framework"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "1"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 652
    :cond_14
    const-string v2, "CallLogAsync"

    const-string v3, "AddCallTask :  ignored in encryption mode.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v13    # "CMF_CALL_TYPE":I
    .end local v14    # "FIND_LOST_PHONE_TO_OWNER_TYPE":I
    .end local v15    # "FIND_LOST_PHONE_TYPE":I
    .end local v16    # "MESSAGE_CALL_TYPE":I
    .end local v17    # "UNKNOWN_PHONE_NUMBER":Ljava/lang/String;
    .end local v18    # "bName":Ljava/lang/String;
    .end local v19    # "c":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    .end local v20    # "cnapName":Ljava/lang/String;
    .end local v23    # "ecid":Lcom/android/phone/common/EcidContact;
    .end local v25    # "fName":Ljava/lang/String;
    .end local v27    # "lName":Ljava/lang/String;
    .end local v28    # "logNumber":Ljava/lang/String;
    :cond_15
    return-object v29

    .line 564
    .restart local v13    # "CMF_CALL_TYPE":I
    .restart local v14    # "FIND_LOST_PHONE_TO_OWNER_TYPE":I
    .restart local v15    # "FIND_LOST_PHONE_TYPE":I
    .restart local v16    # "MESSAGE_CALL_TYPE":I
    .restart local v17    # "UNKNOWN_PHONE_NUMBER":Ljava/lang/String;
    .restart local v18    # "bName":Ljava/lang/String;
    .restart local v19    # "c":Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    .restart local v20    # "cnapName":Ljava/lang/String;
    .restart local v23    # "ecid":Lcom/android/phone/common/EcidContact;
    .restart local v25    # "fName":Ljava/lang/String;
    .restart local v27    # "lName":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->serviceType:I

    if-eqz v2, :cond_17

    .line 565
    const-string v2, "service_type"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->serviceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string v2, "type"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 568
    :cond_17
    const-string v2, "service_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    const-string v2, "type"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 623
    .restart local v28    # "logNumber":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne v2, v3, :cond_19

    .line 624
    const-string v28, "-3"

    goto/16 :goto_2

    .line 625
    :cond_19
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v2, v3, :cond_1a

    .line 626
    const-string v28, "-1"

    goto/16 :goto_2

    .line 627
    :cond_1a
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 628
    const-string v2, "LGT"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 629
    const-string v28, "-4"

    goto/16 :goto_2

    .line 631
    :cond_1b
    const-string v28, "-1"

    goto/16 :goto_2

    .line 656
    :cond_1c
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    if-eqz v2, :cond_1d

    .line 658
    :try_start_0
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v29, v26
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 505
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 659
    :catch_0
    move-exception v24

    .line 660
    .local v24, "exception":Landroid/database/sqlite/SQLiteException;
    const-string v2, "CallLogAsync"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v2, 0x0

    aput-object v2, v29, v26

    goto :goto_3

    .line 662
    .end local v24    # "exception":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v24

    .line 663
    .local v24, "exception":Ljava/lang/IllegalArgumentException;
    const-string v2, "CallLogAsync"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v2, 0x0

    aput-object v2, v29, v26

    goto :goto_3

    .line 670
    .end local v24    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_1d
    :try_start_1
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    move-object/from16 v0, v19

    iget-wide v7, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static/range {v2 .. v9}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v29, v26
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 673
    :catch_2
    move-exception v22

    .line 681
    .local v22, "e":Ljava/lang/Exception;
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception raised during adding CallLog entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v2, 0x0

    aput-object v2, v29, v26

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 495
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/common/CallLogAsync$AddCallTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .locals 6
    .param p1, "result"    # [Landroid/net/Uri;

    .prologue
    .line 695
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 696
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 697
    const-string v4, "CallLogAsync"

    const-string v5, "Failed to write call to the log."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method
