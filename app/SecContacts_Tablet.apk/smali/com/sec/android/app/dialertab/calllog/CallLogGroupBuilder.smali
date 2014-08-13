.class public Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "CallLogGroupBuilder"

.field public static mDateFormat:Ljava/lang/String;


# instance fields
.field private final CALL:I

.field private final MESSAGE:I

.field private final NOR_INT:I

.field private final SEP_INT:I

.field private final VOICEMAIL:I

.field private groupCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private groupCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/GroupCount;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mGroupCreator:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

.field private mRemindMeLater:Z

.field private mRemindTimeArray:[I

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private seperatorMsgID:[Ljava/lang/String;

.field private seperatorMsgType:[I

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->DBG:Z

    .line 79
    const-string v0, "MM-dd-yyyy"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mDateFormat:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 77
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;)V
    .locals 2
    .param p1, "groupCreator"    # Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->CALL:I

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->MESSAGE:I

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->VOICEMAIL:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->NOR_INT:I

    .line 82
    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->SEP_INT:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindMeLater:Z

    .line 88
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    .line 89
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    .line 94
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgID:[Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

    .line 104
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V
    .locals 2
    .param p1, "groupCreator"    # Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->CALL:I

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->MESSAGE:I

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->VOICEMAIL:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->NOR_INT:I

    .line 82
    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->SEP_INT:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindMeLater:Z

    .line 88
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    .line 89
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    .line 94
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgID:[Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

    .line 114
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method private addGroup(II)V
    .locals 2
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(IIZ)V

    .line 525
    return-void
.end method

.method private equalLTNPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number1E164"    # Ljava/lang/String;
    .param p3, "number1Normal"    # Ljava/lang/String;
    .param p4, "number2"    # Ljava/lang/String;
    .param p5, "number2E164"    # Ljava/lang/String;
    .param p6, "number2Normal"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 585
    sget-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->DBG:Z

    if-eqz v6, :cond_0

    .line 586
    const-string v6, "CallLogGroupBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " number1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " number1E164 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  number1Normal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " number2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  number2E164 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  number2Normal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v0

    .line 590
    .local v0, "mMatchLen":I
    const/4 v1, 0x0

    .line 591
    .local v1, "nLen1":I
    const/4 v2, 0x0

    .line 593
    .local v2, "nLen2":I
    const/4 v3, 0x0

    .line 594
    .local v3, "partialNumber1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 596
    .local v4, "partialNumber2":Ljava/lang/String;
    if-eqz p2, :cond_4

    if-eqz p5, :cond_4

    .line 597
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 598
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    .line 600
    if-le v1, v0, :cond_2

    .line 601
    sub-int v6, v1, v0

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 605
    :goto_0
    if-le v2, v0, :cond_3

    .line 606
    sub-int v6, v2, v0

    invoke-virtual {p5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 610
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 646
    :cond_1
    :goto_2
    return v5

    .line 603
    :cond_2
    move-object v3, p2

    goto :goto_0

    .line 608
    :cond_3
    move-object v4, p5

    goto :goto_1

    .line 614
    :cond_4
    if-eqz p3, :cond_5

    if-eqz p6, :cond_5

    .line 615
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 616
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    .line 618
    if-le v1, v0, :cond_6

    .line 619
    sub-int v6, v1, v0

    invoke-virtual {p3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 623
    :goto_3
    if-le v2, v0, :cond_7

    .line 624
    sub-int v6, v2, v0

    invoke-virtual {p6, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 628
    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 632
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 633
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    .line 636
    if-le v1, v0, :cond_8

    .line 637
    sub-int v5, v1, v0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 641
    :goto_5
    if-le v2, v0, :cond_9

    .line 642
    sub-int v5, v2, v0

    invoke-virtual {p4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 646
    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 621
    :cond_6
    move-object v3, p3

    goto :goto_3

    .line 626
    :cond_7
    move-object v4, p6

    goto :goto_4

    .line 639
    :cond_8
    move-object v3, p1

    goto :goto_5

    .line 644
    :cond_9
    move-object v4, p4

    goto :goto_6
.end method

.method private equalPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number1E164"    # Ljava/lang/String;
    .param p3, "number1Normal"    # Ljava/lang/String;
    .param p4, "number2"    # Ljava/lang/String;
    .param p5, "number2E164"    # Ljava/lang/String;
    .param p6, "number2Normal"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 548
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->equalLTNPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 572
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "#"

    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 558
    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 561
    :cond_3
    const-string v1, "ip_call"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 562
    if-eqz p2, :cond_4

    if-eqz p5, :cond_4

    .line 563
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    :cond_4
    if-eqz p3, :cond_5

    if-eqz p6, :cond_5

    .line 569
    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 572
    :cond_5
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;Z)V
    .locals 46
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "doNotGroup"    # Z

    .prologue
    .line 149
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->DBG:Z

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "CallLogGroupBuilder"

    const-string v9, "******** addGroups ********"

    invoke-static {v2, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 152
    .local v17, "count":I
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->DBG:Z

    if-eqz v2, :cond_1

    .line 153
    const-string v2, "CallLogGroupBuilder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cursor.getCount() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    const-string v29, ""

    .local v29, "firstDateFormat":Ljava/lang/String;
    const-string v21, ""

    .line 156
    .local v21, "currentDateFormat":Ljava/lang/String;
    const/4 v15, 0x0

    .line 157
    .local v15, "bSameDate":Z
    const/16 v41, 0x0

    .line 159
    .local v41, "sepCount":I
    if-nez v17, :cond_3

    .line 514
    :cond_2
    :goto_0
    return-void

    .line 164
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    .line 165
    add-int/lit8 v2, v17, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v9, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v2, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    .line 169
    .local v33, "mEnableVIPApp":Z
    move/from16 v0, v17

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgType:[I

    .line 170
    add-int/lit8 v2, v17, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgID:[Ljava/lang/String;

    .line 173
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 174
    move/from16 v0, v17

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindTimeArray:[I

    .line 177
    :cond_4
    const-string v2, "feature_tablet_selection_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_6

    .line 179
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    .line 181
    const-string v2, "CallLogGroupBuilder"

    const-string v9, "init groupCount"

    invoke-static {v2, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_6
    const/4 v12, 0x1

    .line 195
    .local v12, "currentGroupSize":I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 198
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "firstNumber":Ljava/lang/String;
    const/16 v2, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "firstE164Number":Ljava/lang/String;
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "firstNormalNumber":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 206
    .local v26, "firstCallType":I
    const/16 v2, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 207
    .local v31, "firstLogType":I
    const/16 v2, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 208
    .local v23, "currentLogType":I
    const/16 v2, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 209
    .local v36, "mfirstCNAP":Ljava/lang/String;
    const/16 v30, 0x0

    .local v30, "firstLogGroup":I
    const/16 v22, 0x0

    .line 210
    .local v22, "currentLogGroup":I
    const/16 v2, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 213
    .local v32, "firstServiceType":I
    const/16 v35, 0x0

    .line 214
    .local v35, "mRemindMeLaterSet":I
    const/16 v34, 0x0

    .line 216
    .local v34, "mGroupRemindMeLaterSet":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_7
    sparse-switch v31, :sswitch_data_0

    .line 250
    :cond_8
    :goto_1
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 252
    .local v27, "firstDate":J
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->setSystemTime()V

    .line 254
    const/16 v41, 0x0

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_9

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v9, "date_format"

    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    .line 259
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_a

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v27

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v29

    .line 270
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    const/16 v9, 0x37

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    aput-object v29, v2, v41

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_b

    .line 275
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 276
    const/16 v2, 0x1f

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 280
    :cond_b
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 281
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 282
    .local v19, "currentDate":J
    add-int/lit8 v41, v41, 0x1

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_c

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v19

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    .line 287
    :cond_c
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 288
    const/4 v15, 0x1

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v2, v41

    .line 298
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "currentNumber":Ljava/lang/String;
    const/16 v2, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 300
    .local v7, "currentE164Number":Ljava/lang/String;
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "currentNormalNumber":Ljava/lang/String;
    const/16 v2, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 305
    sparse-switch v23, :sswitch_data_1

    .line 332
    :cond_d
    :goto_4
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 333
    .local v16, "callType":I
    const/16 v2, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 334
    .local v18, "currentCNAP":Ljava/lang/String;
    const/16 v2, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 336
    .local v24, "currentServiceType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_e

    .line 337
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 338
    const/16 v2, 0x1f

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    or-int v35, v35, v2

    :cond_e
    move-object/from16 v2, p0

    .line 343
    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->equalPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    .line 345
    .local v39, "sameNumber":Z
    move/from16 v0, v30

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    const/16 v38, 0x1

    .line 346
    .local v38, "sameLogType":Z
    :goto_5
    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v37

    .line 348
    .local v37, "sameCNAP":Z
    const/16 v40, 0x1

    .line 350
    .local v40, "sameServiceType":Z
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 351
    const/16 v2, 0x1e

    move/from16 v0, v32

    if-eq v0, v2, :cond_f

    move/from16 v0, v32

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    :cond_f
    const/16 v2, 0x1e

    move/from16 v0, v32

    if-ne v0, v2, :cond_11

    const/16 v2, 0x1f

    move/from16 v0, v24

    if-eq v0, v2, :cond_11

    .line 353
    :cond_10
    const/16 v40, 0x0

    .line 357
    :cond_11
    if-nez v39, :cond_16

    .line 359
    const/16 v42, 0x0

    .line 392
    .local v42, "shouldGroup":Z
    :goto_6
    if-eqz v42, :cond_29

    if-nez p2, :cond_29

    .line 397
    if-eqz v33, :cond_12

    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_12

    .line 399
    const/16 v2, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->setSeperatorMsgValues(IILjava/lang/String;)V

    .line 401
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 403
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 404
    move/from16 v34, v35

    .line 407
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 227
    .end local v6    # "currentNumber":Ljava/lang/String;
    .end local v7    # "currentE164Number":Ljava/lang/String;
    .end local v8    # "currentNormalNumber":Ljava/lang/String;
    .end local v16    # "callType":I
    .end local v18    # "currentCNAP":Ljava/lang/String;
    .end local v19    # "currentDate":J
    .end local v24    # "currentServiceType":I
    .end local v27    # "firstDate":J
    .end local v37    # "sameCNAP":Z
    .end local v38    # "sameLogType":Z
    .end local v39    # "sameNumber":Z
    .end local v40    # "sameServiceType":Z
    .end local v42    # "shouldGroup":Z
    :sswitch_0
    const/16 v30, 0x1

    .line 228
    goto/16 :goto_1

    .line 230
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 231
    const/16 v30, 0x1

    goto/16 :goto_1

    .line 235
    :sswitch_2
    const/16 v30, 0x3

    .line 236
    goto/16 :goto_1

    .line 239
    :sswitch_3
    const/16 v30, 0x2

    .line 241
    if-eqz v33, :cond_8

    .line 243
    const/4 v2, 0x0

    const/16 v9, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->setSeperatorMsgValues(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 292
    .restart local v19    # "currentDate":J
    .restart local v27    # "firstDate":J
    :cond_14
    const/4 v15, 0x0

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    const/16 v9, 0x37

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    aput-object v21, v2, v41

    goto/16 :goto_3

    .line 312
    .restart local v6    # "currentNumber":Ljava/lang/String;
    .restart local v7    # "currentE164Number":Ljava/lang/String;
    .restart local v8    # "currentNormalNumber":Ljava/lang/String;
    :sswitch_4
    const/16 v22, 0x1

    .line 313
    goto/16 :goto_4

    .line 315
    :sswitch_5
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 316
    const/16 v22, 0x1

    goto/16 :goto_4

    .line 320
    :sswitch_6
    const/16 v22, 0x3

    .line 321
    goto/16 :goto_4

    .line 324
    :sswitch_7
    const/16 v22, 0x2

    .line 325
    if-eqz v33, :cond_d

    .line 327
    const/16 v2, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->setSeperatorMsgValues(IILjava/lang/String;)V

    goto/16 :goto_4

    .line 345
    .restart local v16    # "callType":I
    .restart local v18    # "currentCNAP":Ljava/lang/String;
    .restart local v24    # "currentServiceType":I
    .restart local v39    # "sameNumber":Z
    :cond_15
    const/16 v38, 0x0

    goto/16 :goto_5

    .line 360
    .restart local v37    # "sameCNAP":Z
    .restart local v38    # "sameLogType":Z
    .restart local v40    # "sameServiceType":Z
    :cond_16
    if-nez v15, :cond_17

    .line 361
    const/16 v42, 0x0

    .restart local v42    # "shouldGroup":Z
    goto/16 :goto_6

    .line 363
    .end local v42    # "shouldGroup":Z
    :cond_17
    if-nez v38, :cond_18

    .line 364
    const/16 v42, 0x0

    .restart local v42    # "shouldGroup":Z
    goto/16 :goto_6

    .line 365
    .end local v42    # "shouldGroup":Z
    :cond_18
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v37, :cond_1a

    :cond_19
    const-string v2, "feature_cnam"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-nez v37, :cond_1b

    .line 367
    :cond_1a
    const/16 v42, 0x0

    .restart local v42    # "shouldGroup":Z
    goto/16 :goto_6

    .line 368
    .end local v42    # "shouldGroup":Z
    :cond_1b
    if-nez v40, :cond_1c

    .line 369
    const/16 v42, 0x0

    .restart local v42    # "shouldGroup":Z
    goto/16 :goto_6

    .line 370
    .end local v42    # "shouldGroup":Z
    :cond_1c
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_1f

    .line 371
    const/16 v2, 0x12c

    move/from16 v0, v31

    if-eq v0, v2, :cond_1d

    const/16 v2, 0xc8

    move/from16 v0, v31

    if-ne v0, v2, :cond_1e

    :cond_1d
    const/16 v42, 0x1

    .restart local v42    # "shouldGroup":Z
    :goto_7
    goto/16 :goto_6

    .end local v42    # "shouldGroup":Z
    :cond_1e
    const/16 v42, 0x0

    goto :goto_7

    .line 372
    :cond_1f
    const/4 v2, 0x4

    move/from16 v0, v26

    if-ne v0, v2, :cond_20

    .line 374
    const/16 v42, 0x0

    .restart local v42    # "shouldGroup":Z
    goto/16 :goto_6

    .line 375
    .end local v42    # "shouldGroup":Z
    :cond_20
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_22

    .line 377
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_21

    const/16 v42, 0x1

    .restart local v42    # "shouldGroup":Z
    :goto_8
    goto/16 :goto_6

    .end local v42    # "shouldGroup":Z
    :cond_21
    const/16 v42, 0x0

    goto :goto_8

    .line 379
    :cond_22
    const/4 v2, 0x5

    move/from16 v0, v26

    if-ne v0, v2, :cond_24

    .line 381
    const/4 v2, 0x5

    move/from16 v0, v16

    if-ne v0, v2, :cond_23

    const/16 v42, 0x1

    .restart local v42    # "shouldGroup":Z
    :goto_9
    goto/16 :goto_6

    .end local v42    # "shouldGroup":Z
    :cond_23
    const/16 v42, 0x0

    goto :goto_9

    .line 383
    :cond_24
    const/4 v2, 0x6

    move/from16 v0, v26

    if-ne v0, v2, :cond_26

    .line 385
    const/4 v2, 0x6

    move/from16 v0, v16

    if-ne v0, v2, :cond_25

    const/16 v42, 0x1

    .restart local v42    # "shouldGroup":Z
    :goto_a
    goto/16 :goto_6

    .end local v42    # "shouldGroup":Z
    :cond_25
    const/16 v42, 0x0

    goto :goto_a

    .line 389
    :cond_26
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_27

    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_28

    :cond_27
    const/16 v42, 0x1

    .restart local v42    # "shouldGroup":Z
    :goto_b
    goto/16 :goto_6

    .end local v42    # "shouldGroup":Z
    :cond_28
    const/16 v42, 0x0

    goto :goto_b

    .line 414
    .restart local v42    # "shouldGroup":Z
    :cond_29
    const/4 v2, 0x1

    if-le v12, v2, :cond_2d

    .line 415
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    sub-int/2addr v2, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 416
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindTimeArray:[I

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    sub-int/2addr v9, v12

    aput v34, v2, v9

    .line 420
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    if-eqz v2, :cond_2d

    .line 421
    new-array v11, v12, [I

    .line 422
    .local v11, "IDs":[I
    const/16 v25, 0x0

    .local v25, "dataCount":I
    :goto_c
    move/from16 v0, v25

    if-ge v0, v12, :cond_2b

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v11, v25

    .line 422
    add-int/lit8 v25, v25, 0x1

    goto :goto_c

    .line 426
    :cond_2b
    if-eqz v33, :cond_2f

    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_2f

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgType:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgID:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->printLogSeperatorMsgValues(I[I[Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    const/4 v10, 0x0

    aget v10, v11, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgType:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgID:[Ljava/lang/String;

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I[II[I[Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const/16 v25, 0x0

    :goto_d
    move/from16 v0, v25

    if-ge v0, v12, :cond_2c

    add-int/lit8 v25, v25, 0x1

    goto :goto_d

    .line 436
    :cond_2c
    const/4 v2, 0x0

    const/16 v9, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->setSeperatorMsgValues(IILjava/lang/String;)V

    .line 444
    .end local v11    # "IDs":[I
    .end local v25    # "dataCount":I
    :cond_2d
    :goto_e
    const/4 v12, 0x1

    .line 447
    move/from16 v26, v16

    .line 448
    move/from16 v31, v23

    .line 449
    move-object/from16 v36, v18

    .line 451
    move-object/from16 v43, v3

    .line 452
    .local v43, "temp":Ljava/lang/String;
    move-object v3, v6

    .line 453
    move-object/from16 v6, v43

    .line 456
    move-object/from16 v44, v4

    .line 457
    .local v44, "tempE164":Ljava/lang/String;
    move-object v4, v7

    .line 458
    move-object/from16 v7, v44

    .line 460
    move-object/from16 v45, v5

    .line 461
    .local v45, "tempNormal":Ljava/lang/String;
    move-object v5, v8

    .line 462
    move-object/from16 v8, v45

    .line 464
    move-object/from16 v29, v21

    .line 465
    move/from16 v30, v22

    .line 467
    move/from16 v32, v24

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2e

    .line 470
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 471
    const/16 v2, 0x1f

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 475
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 439
    .end local v43    # "temp":Ljava/lang/String;
    .end local v44    # "tempE164":Ljava/lang/String;
    .end local v45    # "tempNormal":Ljava/lang/String;
    .restart local v11    # "IDs":[I
    .restart local v25    # "dataCount":I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    const/4 v10, 0x0

    aget v10, v11, v10

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I[II)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 482
    .end local v6    # "currentNumber":Ljava/lang/String;
    .end local v7    # "currentE164Number":Ljava/lang/String;
    .end local v8    # "currentNormalNumber":Ljava/lang/String;
    .end local v11    # "IDs":[I
    .end local v16    # "callType":I
    .end local v18    # "currentCNAP":Ljava/lang/String;
    .end local v19    # "currentDate":J
    .end local v24    # "currentServiceType":I
    .end local v25    # "dataCount":I
    .end local v37    # "sameCNAP":Z
    .end local v38    # "sameLogType":Z
    .end local v39    # "sameNumber":Z
    .end local v40    # "sameServiceType":Z
    .end local v42    # "shouldGroup":Z
    :cond_30
    const/4 v2, 0x1

    if-le v12, v2, :cond_2

    .line 483
    sub-int v2, v17, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_31

    .line 485
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindTimeArray:[I

    sub-int v9, v17, v12

    aput v34, v2, v9

    .line 490
    :cond_31
    const-string v2, "CallLogGroupBuilder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "groupCount :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 493
    new-array v11, v12, [I

    .line 494
    .restart local v11    # "IDs":[I
    const/16 v25, 0x0

    .restart local v25    # "dataCount":I
    :goto_f
    move/from16 v0, v25

    if-ge v0, v12, :cond_32

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCount:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v11, v25

    .line 494
    add-int/lit8 v25, v25, 0x1

    goto :goto_f

    .line 499
    :cond_32
    if-eqz v33, :cond_33

    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_33

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgType:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgID:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->printLogSeperatorMsgValues(I[I[Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    const/4 v10, 0x0

    aget v10, v11, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgType:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgID:[Ljava/lang/String;

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I[II[I[Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    const/16 v25, 0x0

    :goto_10
    move/from16 v0, v25

    if-ge v0, v12, :cond_2

    add-int/lit8 v25, v25, 0x1

    goto :goto_10

    .line 510
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    const/4 v10, 0x0

    aget v10, v11, v10

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I[II)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 220
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_3
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_1
    .end sparse-switch

    .line 305
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_4
        0x78 -> :sswitch_4
        0xc8 -> :sswitch_7
        0x12c -> :sswitch_7
        0x1f4 -> :sswitch_4
        0x1fe -> :sswitch_4
        0x320 -> :sswitch_4
        0x384 -> :sswitch_6
        0x3e8 -> :sswitch_4
        0x44c -> :sswitch_5
    .end sparse-switch
.end method

.method public getGroupCountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/GroupCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->groupCountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRemindTimeArray()[I
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mRemindTimeArray:[I

    return-object v0
.end method

.method public getSeperatorIDList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStrSeparatorArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    return-object v0
.end method

.method public printLogSeperatorMsgValues(I[I[Ljava/lang/String;)V
    .locals 4
    .param p1, "currentGroupSize"    # I
    .param p2, "MsgType"    # [I
    .param p3, "MsgID"    # [Ljava/lang/String;

    .prologue
    .line 121
    const-string v1, "CallLogGroupBuilder"

    const-string v2, "Print Logs :  Make New Group for SPAM Msg !!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    .local v0, "dataCount":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 123
    const-string v1, "CallLogGroupBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Print Logs :  seperator MsgType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v1, "CallLogGroupBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Print Logs :  seperator MsgID["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public setSeperatorMsgValues(IILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "MsgType"    # I
    .param p3, "MsgID"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgType:[I

    aput p2, v0, p1

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorMsgID:[Ljava/lang/String;

    aput-object p3, v0, p1

    .line 134
    return-void
.end method
