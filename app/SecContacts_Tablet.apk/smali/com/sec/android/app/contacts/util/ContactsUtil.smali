.class public Lcom/sec/android/app/contacts/util/ContactsUtil;
.super Ljava/lang/Object;
.source "ContactsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/util/ContactsUtil$ConfigsIntentExtras;,
        Lcom/sec/android/app/contacts/util/ContactsUtil$RCS_BB_FEATURES;,
        Lcom/sec/android/app/contacts/util/ContactsUtil$RCS_STATE;,
        Lcom/sec/android/app/contacts/util/ContactsUtil$UserSwitchReceiver;
    }
.end annotation


# static fields
.field public static final CHECK_MMSAPP_INSTALL:I = 0x1

.field public static final CHECK_SEND_MSG:I = 0x2

.field public static final GROUP_VIDEO_CALLING:Ljava/lang/String; = "VideoCalling"

.field public static final PAUSE:C = ','

.field public static final PAUSE2:C = 'P'

.field public static RCS_STATE_VALUE:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final WAIT:C = ';'

.field public static final WAIT2:C = 'W'

.field public static final WILD:C = 'N'

.field public static isRCSeTurnedOn:Z

.field public static mIsMasterSimEnabled:Z

.field public static mIsSimMasterInit:Z

.field private static mUserSwitchReceiver:Lcom/sec/android/app/contacts/util/ContactsUtil$UserSwitchReceiver;

.field private static mbIsContainerOnlyMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    const-string v0, "ContactsUtil"

    sput-object v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    .line 135
    sput-boolean v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->mIsSimMasterInit:Z

    .line 137
    sput-boolean v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->mIsMasterSimEnabled:Z

    .line 143
    sput-boolean v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeTurnedOn:Z

    .line 1110
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->mUserSwitchReceiver:Lcom/sec/android/app/contacts/util/ContactsUtil$UserSwitchReceiver;

    .line 1111
    sput-boolean v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->mbIsContainerOnlyMode:Z

    .line 1604
    sput v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1628
    return-void
.end method

.method public static IsICEGroupAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 741
    if-nez p0, :cond_0

    .line 742
    sget-object v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v2, "ICE is available : false. can not use context"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :goto_0
    return v3

    .line 745
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhoneICE(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 746
    sget-object v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v2, "ICE is available : false in tablet"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Contact_DisableEmergencyGroup"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 751
    .local v0, "disableICEGroup":Z
    sget-object v4, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICE is available : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-nez v0, :cond_3

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 751
    goto :goto_1

    :cond_3
    move v2, v3

    .line 752
    goto :goto_2
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->mbIsContainerOnlyMode:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 121
    sput-boolean p0, Lcom/sec/android/app/contacts/util/ContactsUtil;->mbIsContainerOnlyMode:Z

    return p0
.end method

.method public static appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "app_installed":Z
    if-nez p0, :cond_0

    move v1, v0

    .line 712
    .end local v0    # "app_installed":Z
    .local v1, "app_installed":I
    :goto_0
    return v1

    .line 705
    .end local v1    # "app_installed":I
    .restart local v0    # "app_installed":Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 707
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 712
    .restart local v1    # "app_installed":I
    goto :goto_0

    .line 709
    .end local v1    # "app_installed":I
    :catch_0
    move-exception v2

    .line 710
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static assistDialingVZW(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p0, "numberString"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 800
    return-object p0
.end method

.method private static assistDialingVZW_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "numberString"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 814
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 1157
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 757
    if-nez p0, :cond_0

    .line 764
    :goto_0
    return-void

    .line 760
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static covertToSystemTitle(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 819
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 820
    .local v2, "size":I
    const/4 v5, 0x1

    if-ge v2, v5, :cond_0

    .line 821
    const-string v5, ""

    .line 857
    :goto_0
    return-object v5

    .line 823
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 826
    .local v3, "systemTitleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 828
    const-string v5, "Friends"

    const v6, 0x7f0e028d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const-string v5, "Family"

    const v6, 0x7f0e028e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v5, "Coworkers"

    const v6, 0x7f0e028f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v5, "My Contacts"

    const v6, 0x7f0e0290

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 834
    const-string v5, "ICE"

    const v6, 0x7f0e0262

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 845
    .local v4, "title":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 848
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 849
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 851
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 837
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "title":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 838
    const-string v5, "ICE"

    const v6, 0x7f0e0015

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 840
    :cond_5
    const-string v5, "ICE"

    const v6, 0x7f0e0261

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 853
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 856
    .end local v4    # "title":Ljava/lang/String;
    :cond_7
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 857
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static createZoomInPhotoPopup(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/widget/PopupWindow;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isNamecard"    # Z

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1551
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04006e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1552
    .local v2, "popupView":Landroid/view/View;
    const v3, 0x7f0901a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1553
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, p2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getResizeBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1555
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 1556
    .local v1, "popup":Landroid/widget/PopupWindow;
    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1557
    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1558
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1559
    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1560
    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1561
    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1562
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1563
    const v3, 0x1030354

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    move-object v3, p0

    .line 1564
    check-cast v3, Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v3, :cond_0

    .line 1565
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, p1, v6, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1572
    :goto_0
    return-object v1

    .line 1570
    :cond_0
    const/16 v3, 0x11

    invoke-virtual {v1, p1, v3, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public static doBoost(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 872
    const/16 v0, 0xfa0

    invoke-static {p0, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;I)V

    .line 873
    return-void
.end method

.method public static doBoost(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMs"    # I

    .prologue
    .line 876
    if-eqz p0, :cond_1

    .line 877
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v2, 0xc

    invoke-direct {v0, p0, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    .line 878
    .local v0, "cpuBooster":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v1

    .line 879
    .local v1, "supportedCPUFreqTable":[I
    if-eqz v1, :cond_0

    .line 880
    const-string v2, "CPU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 884
    .end local v0    # "cpuBooster":Landroid/os/DVFSHelper;
    .end local v1    # "supportedCPUFreqTable":[I
    :cond_1
    return-void
.end method

.method public static generateGroupMemberFilterUriBuilder(Lcom/sec/android/app/contacts/group/GroupInfo;I)Landroid/net/Uri$Builder;
    .locals 6
    .param p0, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p1, "groupType"    # I

    .prologue
    .line 1003
    const/4 v1, 0x0

    .line 1004
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    packed-switch p1, :pswitch_data_0

    .line 1052
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1008
    :pswitch_0
    const-string v3, "content://com.android.contacts/groups/not_assigned/contacts_filter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1010
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1055
    .local v0, "builder":Landroid/net/Uri$Builder;
    :goto_0
    return-object v0

    .line 1015
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "uri":Landroid/net/Uri;
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/title/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts_filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1017
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1018
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_0

    .line 1022
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "uri":Landroid/net/Uri;
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts_filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1024
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1025
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_0

    .line 1029
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "uri":Landroid/net/Uri;
    :pswitch_3
    const-string v3, "content://com.android.contacts/contacts/account_filter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1030
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1031
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_0

    .line 1035
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "uri":Landroid/net/Uri;
    :pswitch_4
    sget-object v3, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v4, "Loader searchice filter uri"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/title/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts_filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1038
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "emergency"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1039
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1040
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto/16 :goto_0

    .line 1044
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "uri":Landroid/net/Uri;
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;->AUTO_GROUP_CONTENTS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts_filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1045
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "has_email"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1046
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "is_user_profile"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1047
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "link"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1048
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1049
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto/16 :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static generateGroupMemberUri(Lcom/sec/android/app/contacts/group/GroupInfo;I)Landroid/net/Uri;
    .locals 5
    .param p0, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p1, "groupType"    # I

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 994
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 951
    :pswitch_0
    const-string v2, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 997
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 956
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 960
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v3, "group title is empty. set uri for not assigned group"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const-string v2, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 964
    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 968
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 970
    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 974
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_3
    const-string v2, "content://com.android.contacts/contacts/account"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 975
    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 979
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_4
    sget-object v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v3, "Loader ice uri"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 982
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "emergency"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 983
    goto/16 :goto_0

    .line 986
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_5
    sget-object v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v3, "GROUP_TYPE_VIDEO_CALLING URI"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    sget-object v1, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;->AUTO_GROUP_CONTENTS_URI:Landroid/net/Uri;

    .line 988
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "has_email"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 989
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "is_user_profile"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 990
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "link"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 991
    goto/16 :goto_0

    .line 949
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getAdn2Editable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "adn2_editable"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getAdnEditable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "adn_editable"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getAlertTonePickerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alertToneUriString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 450
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 453
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const-string v2, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 459
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 460
    .local v0, "alerttoneUri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 463
    :cond_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 464
    const-string v2, "android.intent.extra.ringtone.TITLE"

    const v3, 0x7f0e02a8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v2, "useLightTheme"

    const-string v3, "PHONE_WHITE"

    const-string v4, "DEFAULT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    return-object v1
.end method

.method public static getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 13
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 322
    const/4 v3, 0x0

    .line 424
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v3

    .line 325
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    const-string v10, "ro.product.name"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "buildCarrier":Ljava/lang/String;
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "salesCode":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.android.phone"

    const-string v11, "com.android.phone.PrivilegedOutgoingCallBroadcaster"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .local v0, "CALL_INTENT_DESTINATION":Landroid/content/ComponentName;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 342
    sget-object v10, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    if-eqz v10, :cond_4

    if-eqz p0, :cond_4

    sget-object v10, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialCheckNumber(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 344
    sget-object v10, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialCheckNumber(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 345
    .local v3, "intent":Landroid/content/Intent;
    sget-object v10, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v11, "chameleon exists"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 416
    const/high16 v10, 0x10000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 418
    :cond_3
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 419
    new-instance v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v4, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 420
    .local v4, "mMW":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getZoneInfo()I

    move-result v9

    .line 421
    .local v9, "zoneInfo":I
    const-string v10, "zone_info"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 346
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mMW":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .end local v9    # "zoneInfo":I
    .restart local p1    # "context":Landroid/content/Context;
    :cond_4
    const-string v10, "SPR"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "*2"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    const-string v10, "BST"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "611"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "#611"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "*611"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 349
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 350
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x1

    .line 352
    .local v5, "newZone":Z
    :try_start_0
    const-string v10, "com.sprint.zone"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_2
    if-eqz v5, :cond_7

    .line 358
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sprint.zone.DSA_ACTIVITY"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "com.sprint.zone.DSA_ACTIVITY"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v10, "vnd.sprint.zone/vnd.sprint.zone.main"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v10, "com.sprint.zone.source"

    invoke-virtual {v3, v10, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.sprint.zone"

    const-string v12, "com.sprint.zone.PageMain"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 372
    :goto_3
    sget-object v10, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v11, "chameleon doesn\'t exists"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 353
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    goto :goto_2

    .line 365
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v10, "com.sprint.dsa.url"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://dsa.spcsdns.net:443/dsa/?number="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const/high16 v10, 0x10000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 374
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "newZone":Z
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, p0, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 376
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 380
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v10, "VZW"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 381
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, p0, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 383
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "origin"

    const-string v11, "from_contact"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 385
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a
    const-string v10, "m3dv"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "t0ltedv"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_VoiceCall_ReplaceGsmCharToAndroidFormat"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 399
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x50

    const/16 v12, 0x2c

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "replaceNumber":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x57

    const/16 v12, 0x3b

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 401
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v7, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 403
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 405
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "replaceNumber":Ljava/lang/String;
    :cond_c
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, p0, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 407
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "feature_skt"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 408
    const-string v10, "call_from_sec"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    :cond_d
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 411
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method public static getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1376
    const-string v0, ""

    .line 1378
    .local v0, "defaultvalue":Ljava/lang/String;
    const-string v1, "VoLTEBetaEnabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1379
    const-string v0, "1"

    .line 1411
    :cond_0
    :goto_0
    return-object v0

    .line 1380
    :cond_1
    const-string v1, "Capability_Discovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1381
    const-string v0, "1"

    goto :goto_0

    .line 1382
    :cond_2
    const-string v1, "LVCBetaEnabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1383
    const-string v0, "1"

    goto :goto_0

    .line 1384
    :cond_3
    const-string v1, "CapCacheExp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1385
    const-string v0, "7776000"

    goto :goto_0

    .line 1386
    :cond_4
    const-string v1, "AvailCacheExp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1387
    const-string v0, "60"

    goto :goto_0

    .line 1388
    :cond_5
    const-string v1, "Source_Throttle_Publish"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1389
    const-string v0, "60"

    goto :goto_0

    .line 1390
    :cond_6
    const-string v1, "Capability_Poll_Interval"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1391
    const-string v0, "604800"

    goto :goto_0

    .line 1392
    :cond_7
    const-string v1, "Max_Number_Of_Entries"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1393
    const-string v0, "500"

    goto :goto_0

    .line 1394
    :cond_8
    const-string v1, "mobile_data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1395
    const-string v0, ""

    goto :goto_0

    .line 1396
    :cond_9
    const-string v1, "LstSubscribeTime"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1397
    const-string v0, "0"

    goto :goto_0

    .line 1398
    :cond_a
    const-string v1, "PublishTime"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1399
    const-string v0, ""

    goto :goto_0

    .line 1400
    :cond_b
    const-string v1, "sipuriprefix"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1401
    const-string v0, "+1"

    goto :goto_0

    .line 1402
    :cond_c
    const-string v1, "HomeDomainName"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1403
    const-string v0, "ims.lte.wal.verizon.com"

    goto/16 :goto_0

    .line 1404
    :cond_d
    const-string v1, "uritype"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1405
    const-string v0, "tel:"

    goto/16 :goto_0

    .line 1407
    :cond_e
    const-string v1, "publish_pst_value"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1408
    const-string v0, "1200"

    goto/16 :goto_0
.end method

.method public static getDialable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "tmpNumber":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getEditable(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)Z
    .locals 8
    .param p0, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "accountType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "dataSet":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "systemId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "Title":Ljava/lang/String;
    sget-object v5, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Title:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v5, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 549
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "PersonalGroup"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 550
    const/4 v3, 0x0

    .line 564
    .local v3, "isEditable":Z
    :goto_0
    return v3

    .line 552
    .end local v3    # "isEditable":Z
    :cond_0
    const/4 v3, 0x1

    .restart local v3    # "isEditable":Z
    goto :goto_0

    .line 554
    .end local v3    # "isEditable":Z
    :cond_1
    const-string v5, "com.google"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    .line 555
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "PersonalGroup"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 556
    const/4 v3, 0x0

    .restart local v3    # "isEditable":Z
    goto :goto_0

    .line 558
    .end local v3    # "isEditable":Z
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "isEditable":Z
    goto :goto_0

    .line 561
    .end local v3    # "isEditable":Z
    :cond_3
    sget-object v5, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v6, "inside false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v3, 0x0

    .restart local v3    # "isEditable":Z
    goto :goto_0
.end method

.method public static getHelpAppVersion(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1175
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.helphub"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.helphub"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_0
    return v1

    .line 1178
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1182
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 275
    if-nez p0, :cond_0

    move-object v0, v1

    .line 282
    :goto_0
    return-object v0

    .line 277
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ipcall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getLaunchHelpAppIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1166
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    return-object v0
.end method

.method public static getMediaContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 1233
    sget-object v11, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v12, "getMediaContentUri"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    if-nez p1, :cond_1

    move-object v7, v10

    .line 1311
    :cond_0
    :goto_0
    return-object v7

    .line 1236
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, "filePath":Ljava/lang/String;
    if-nez v3, :cond_2

    move-object v7, v10

    .line 1238
    goto :goto_0

    .line 1239
    :cond_2
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1240
    .local v2, "extension":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1241
    .local v7, "newUri":Landroid/net/Uri;
    if-eqz v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1242
    const/16 v11, 0x2e

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1243
    .local v0, "dotPos":I
    if-ltz v0, :cond_3

    .line 1244
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1249
    .end local v0    # "dotPos":I
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1252
    .local v5, "mimeType":Ljava/lang/String;
    sget-object v11, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getMediaContentUri - extension("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "), mimeType("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    if-nez v5, :cond_5

    const-string v11, "3ga"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1258
    sget-object v11, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getMediaContentUri - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1269
    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1284
    .local v6, "newSoundFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1285
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1286
    .local v9, "values":Landroid/content/ContentValues;
    const-string v11, "_data"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const-string v11, "title"

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string v11, "mime_type"

    const-string v12, "audio/*"

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const-string v11, "_size"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1291
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1293
    .local v8, "tempUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_data=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 1297
    sget-object v10, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getMediaContentUri - tempUri("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "), newUri("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    if-eqz v7, :cond_0

    .line 1300
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1301
    .local v4, "isRingtone":Landroid/content/ContentValues;
    const-string v10, "is_ringtone"

    const-string v11, "1"

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v4, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1304
    sget-object v10, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleRingtonePicked - pickedUri("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1305
    :catch_0
    move-exception v1

    .line 1306
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v10, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleRingtonePicked(IllegalArgumentException): pickedUri is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1260
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "isRingtone":Landroid/content/ContentValues;
    .end local v6    # "newSoundFile":Ljava/io/File;
    .end local v8    # "tempUri":Landroid/net/Uri;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_5
    if-eqz v5, :cond_4

    :try_start_2
    const-string v11, "audio"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1261
    sget-object v11, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v12, "getMediaContentUri - mimeType is not audio - return null"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v10

    .line 1262
    goto/16 :goto_0

    .line 1264
    .end local v5    # "mimeType":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1265
    .local v1, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v12, "getMediaContentUri - exception is Occured - return null"

    invoke-static {v11, v12, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 1266
    goto/16 :goto_0
.end method

.method public static getResizeBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "viewHeight"    # F
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v7, 0x42c80000

    .line 1539
    const/4 v3, 0x0

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_0

    .line 1547
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 1542
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 1543
    .local v2, "width":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 1544
    .local v0, "height":F
    float-to-double v3, p0

    const-wide/high16 v5, 0x3ff8000000000000L

    mul-double/2addr v3, v5

    div-float v5, v0, v7

    float-to-double v5, v5

    div-double/2addr v3, v5

    double-to-float v1, v3

    .line 1545
    .local v1, "scale":F
    div-float v3, v1, v7

    mul-float/2addr v2, v3

    .line 1546
    div-float v3, v1, v7

    mul-float/2addr v0, v3

    .line 1547
    float-to-int v3, v2

    float-to-int v4, v0

    const/4 v5, 0x1

    invoke-static {p1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public static getRingtonePickerIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "existingUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 428
    if-nez p0, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 446
    :goto_0
    return-object v0

    .line 431
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    const-string v3, "neutral_button"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    const-string v3, "neutral_button_text"

    const v4, 0x7f0e0462

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 439
    .local v1, "ringtone":Landroid/media/Ringtone;
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 440
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/Ringtone;->isUriTrue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    move-object v2, p1

    .line 443
    :cond_1
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 444
    const-string v3, "useLightTheme"

    const-string v4, "PHONE_WHITE"

    const-string v5, "DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getSecretContactDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1320
    const v6, 0x7f020600

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1323
    .local v4, "secretIcon":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1325
    .local v2, "icon":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1328
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1329
    .local v3, "photoPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1330
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1331
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1332
    .local v5, "src":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v1, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1333
    .local v1, "dst":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, v5, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1335
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1336
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v1, v9, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1338
    invoke-virtual {v0, v4, v5, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1339
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1341
    return-object v2
.end method

.method public static getSim2DBReady(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "sim2_db_ready"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getSimDBReady(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "sim_db_ready"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getSoundPickerIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 490
    const-string v1, "enable_ringtone_recommender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    const-string v1, "PHONE_WHITE"

    const-string v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const-string v1, "theme"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    :cond_0
    return-object v0
.end method

.method public static getSquareNamecardBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "original"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1484
    const-string v3, "contacts.display_photo_size"

    const/16 v4, 0x1e0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 1487
    .local v15, "maxDim":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1488
    .local v12, "cropWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1489
    .local v9, "cropHeight":I
    const/4 v10, 0x0

    .line 1490
    .local v10, "cropLeft":I
    const/4 v11, 0x0

    .line 1491
    .local v11, "cropTop":I
    if-eq v12, v9, :cond_0

    .line 1493
    if-le v9, v12, :cond_3

    .line 1494
    sub-int v3, v9, v12

    div-int/lit8 v11, v3, 0x2

    .line 1501
    :cond_0
    :goto_0
    const/high16 v3, 0x3f800000

    int-to-float v4, v15

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 1503
    .local v20, "scaleFactor":F
    const/high16 v3, 0x3f800000

    cmpg-float v3, v20, v3

    if-ltz v3, :cond_1

    if-nez v10, :cond_1

    if-eqz v11, :cond_2

    .line 1504
    :cond_1
    int-to-float v3, v12

    mul-float v3, v3, v20

    float-to-int v0, v3

    move/from16 v18, v0

    .line 1505
    .local v18, "newWidth":I
    int-to-float v3, v9

    mul-float v3, v3, v20

    float-to-int v0, v3

    move/from16 v16, v0

    .line 1506
    .local v16, "newHeight":I
    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    move/from16 v17, v18

    .line 1508
    .local v17, "newSize":I
    :goto_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 1509
    .local v21, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1512
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1513
    .local v7, "WHITE_PAINT":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1514
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1516
    new-instance v22, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4, v12, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1518
    .local v22, "src":Landroid/graphics/Rect;
    const/4 v14, 0x0

    .line 1519
    .local v14, "left":I
    move/from16 v19, v18

    .line 1520
    .local v19, "right":I
    const/16 v23, 0x0

    .line 1521
    .local v23, "top":I
    move/from16 v8, v16

    .line 1522
    .local v8, "bottom":I
    if-le v9, v12, :cond_5

    .line 1523
    sub-int v3, v16, v18

    div-int/lit8 v14, v3, 0x2

    .line 1524
    add-int v19, v14, v18

    .line 1529
    :goto_2
    new-instance v13, Landroid/graphics/RectF;

    int-to-float v3, v14

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    int-to-float v6, v8

    invoke-direct {v13, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1531
    .local v13, "dst":Landroid/graphics/RectF;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v13, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 p1, v21

    .line 1534
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v7    # "WHITE_PAINT":Landroid/graphics/Paint;
    .end local v8    # "bottom":I
    .end local v13    # "dst":Landroid/graphics/RectF;
    .end local v14    # "left":I
    .end local v16    # "newHeight":I
    .end local v17    # "newSize":I
    .end local v18    # "newWidth":I
    .end local v19    # "right":I
    .end local v21    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v22    # "src":Landroid/graphics/Rect;
    .end local v23    # "top":I
    .end local p1    # "original":Landroid/graphics/Bitmap;
    :cond_2
    return-object p1

    .line 1496
    .end local v20    # "scaleFactor":F
    .restart local p1    # "original":Landroid/graphics/Bitmap;
    :cond_3
    sub-int v3, v12, v9

    div-int/lit8 v10, v3, 0x2

    goto/16 :goto_0

    .restart local v16    # "newHeight":I
    .restart local v18    # "newWidth":I
    .restart local v20    # "scaleFactor":F
    :cond_4
    move/from16 v17, v16

    .line 1506
    goto :goto_1

    .line 1526
    .restart local v2    # "c":Landroid/graphics/Canvas;
    .restart local v7    # "WHITE_PAINT":Landroid/graphics/Paint;
    .restart local v8    # "bottom":I
    .restart local v14    # "left":I
    .restart local v17    # "newSize":I
    .restart local v19    # "right":I
    .restart local v21    # "scaledBitmap":Landroid/graphics/Bitmap;
    .restart local v22    # "src":Landroid/graphics/Rect;
    .restart local v23    # "top":I
    :cond_5
    sub-int v3, v18, v16

    div-int/lit8 v23, v3, 0x2

    .line 1527
    add-int v8, v23, v16

    goto :goto_2
.end method

.method public static getSquareNamecardFilePath(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1433
    const-string v7, "SquareNameCard.jpg"

    invoke-static {p0, v7}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1434
    .local v2, "imagePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1435
    .local v6, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1437
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1438
    .local v1, "imageFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 1440
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 1445
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v7, 0x1

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    if-ne v7, v8, :cond_0

    .line 1447
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1448
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1453
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1454
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "_data"

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string v7, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1469
    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_2
    return-object v2

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1449
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1458
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1459
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1462
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1463
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1464
    :catch_2
    move-exception v0

    .line 1465
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static getSystemTitleRes(Ljava/lang/String;)I
    .locals 7
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f0e0262

    const v3, 0x7f0e0250

    const v4, 0x7f0e009c

    const v2, 0x7f0e008e

    const v0, 0x7f0e0011

    .line 590
    if-nez p0, :cond_0

    .line 591
    sget-object v5, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v6, "getSystemTitleRes : title is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 596
    const-string v5, "Friends"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 597
    const v0, 0x7f0e000e

    .line 644
    :cond_1
    :goto_0
    return v0

    .line 598
    :cond_2
    const-string v5, "Family"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 599
    const v0, 0x7f0e000f

    goto :goto_0

    .line 600
    :cond_3
    const-string v5, "Coworkers"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 601
    const v0, 0x7f0e0010

    goto :goto_0

    .line 602
    :cond_4
    const-string v5, "Contacts"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 604
    const-string v5, "My Contacts"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 606
    const-string v0, "ICE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 607
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 608
    goto :goto_0

    .line 611
    :cond_5
    const v0, 0x7f0e0015

    goto :goto_0

    .line 613
    :cond_6
    const-string v0, "Favorites"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 614
    goto :goto_0

    .line 615
    :cond_7
    const-string v0, "Not Assigned"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    .line 616
    goto :goto_0

    .line 618
    :cond_8
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemTitleRes : title is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 619
    goto :goto_0

    .line 622
    :cond_9
    const-string v0, "Friends"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 623
    const v0, 0x7f0e028d

    goto :goto_0

    .line 624
    :cond_a
    const-string v0, "Family"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 625
    const v0, 0x7f0e028e

    goto/16 :goto_0

    .line 626
    :cond_b
    const-string v0, "Coworkers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 627
    const v0, 0x7f0e028f

    goto/16 :goto_0

    .line 628
    :cond_c
    const-string v0, "Contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 629
    const v0, 0x7f0e0290

    goto/16 :goto_0

    .line 630
    :cond_d
    const-string v0, "My Contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 631
    const v0, 0x7f0e0290

    goto/16 :goto_0

    .line 632
    :cond_e
    const-string v0, "ICE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 633
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 634
    goto/16 :goto_0

    .line 636
    :cond_f
    const v0, 0x7f0e0261

    goto/16 :goto_0

    .line 638
    :cond_10
    const-string v0, "Favorites"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    .line 639
    goto/16 :goto_0

    .line 640
    :cond_11
    const-string v0, "Not Assigned"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    .line 641
    goto/16 :goto_0

    .line 643
    :cond_12
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemTitleRes : title is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 644
    goto/16 :goto_0
.end method

.method public static getVibrationPickerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "existingUriString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.personalvibration.SelectPatternDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "show_default"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 476
    const-string v1, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    const-string v1, "android.intent.extra.pattern.EXISTING_URI"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v1, "useLightTheme"

    const-string v2, "PHONE_WHITE"

    const-string v3, "DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    return-object v0
.end method

.method public static getVideoCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 243
    if-nez p0, :cond_1

    move-object v0, v3

    .line 259
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v0

    .line 245
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    invoke-static {v5, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    const-string v3, "call_from_sec"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    :cond_2
    const-string v3, "videocall"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 255
    .local v1, "mMW":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getZoneInfo()I

    move-result v2

    .line 256
    .local v2, "zoneInfo":I
    const-string v3, "zone_info"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getWebExIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "attendee"    # Ljava/lang/String;

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 265
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wbx://schedule?attendees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static hasPermanentMenuKey(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 888
    const/4 v0, 0x1

    .line 893
    .local v0, "hasPermanentMenuKey":Z
    return v0
.end method

.method public static isAlwaysTabMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1225
    if-nez p0, :cond_0

    .line 1226
    const/4 v0, 0x0

    .line 1228
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static isAvailableOCR(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.bcocr"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    const/4 v1, 0x1

    .line 1144
    :goto_0
    return v1

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isBlackBirdFeatureEnabled()Z
    .locals 2

    .prologue
    .line 1584
    sget v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 152
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDiskFull()Z
    .locals 7

    .prologue
    .line 221
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 223
    .local v2, "dataPath":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 224
    .local v0, "blockSize":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    mul-long v3, v0, v5

    .line 226
    .local v3, "freeMem":J
    const-wide/32 v5, 0x100000

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 227
    const/4 v5, 0x1

    .line 228
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isEasyMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1068
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 1072
    :cond_0
    return v2
.end method

.method public static isEmailAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 654
    const-string v0, "com.android.email"

    invoke-static {p0, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHelpHubDownloadableSupported()Z
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x0

    return v0
.end method

.method public static isICEGroup(Ljava/lang/String;)Z
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 733
    const-string v0, "ICE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKnoxContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1086
    sget-object v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->mUserSwitchReceiver:Lcom/sec/android/app/contacts/util/ContactsUtil$UserSwitchReceiver;

    if-nez v2, :cond_0

    .line 1087
    new-instance v2, Lcom/sec/android/app/contacts/util/ContactsUtil$UserSwitchReceiver;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil$UserSwitchReceiver;-><init>()V

    sput-object v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->mUserSwitchReceiver:Lcom/sec/android/app/contacts/util/ContactsUtil$UserSwitchReceiver;

    .line 1089
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1090
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1091
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1092
    sget-object v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->mUserSwitchReceiver:Lcom/sec/android/app/contacts/util/ContactsUtil$UserSwitchReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1095
    const/4 v0, 0x0

    .line 1097
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "isKioskModeEnabled"

    invoke-static {p0, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1099
    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1100
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->mbIsContainerOnlyMode:Z

    .line 1107
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->mbIsContainerOnlyMode:Z

    return v2

    .line 1102
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->mbIsContainerOnlyMode:Z

    goto :goto_0
.end method

.method public static isKnoxMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1078
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1079
    const/4 v0, 0x1

    .line 1081
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLessThan5Percent()Z
    .locals 12

    .prologue
    .line 232
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, "dataPath":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 235
    .local v0, "blockSize":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v8, v8

    mul-long v6, v0, v8

    .line 236
    .local v6, "totalMem":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    mul-long v3, v0, v8

    .line 237
    .local v3, "freeMem":J
    long-to-float v8, v3

    long-to-float v9, v6

    div-float v5, v8, v9

    .line 239
    .local v5, "percent":F
    float-to-double v8, v5

    const-wide v10, 0x3fa999999999999aL

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1202
    const-string v0, "ar"

    .line 1204
    .local v0, "ISO639_ARABIC":Ljava/lang/String;
    const-string v3, "fa"

    .line 1206
    .local v3, "ISO639_PERSIAN":Ljava/lang/String;
    const-string v1, "he"

    .line 1209
    .local v1, "ISO639_HEBREW":Ljava/lang/String;
    const-string v2, "iw"

    .line 1211
    .local v2, "ISO639_HEBREW_FORMER":Ljava/lang/String;
    const-string v6, "ji"

    .line 1213
    .local v6, "ISO639_YIDDISH_FORMER":Ljava/lang/String;
    const-string v4, "ur"

    .line 1215
    .local v4, "ISO639_URDU":Ljava/lang/String;
    const-string v5, "yi"

    .line 1217
    .local v5, "ISO639_YIDDISH":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 1218
    .local v7, "iso639":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isMMSAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 665
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const/4 v0, 0x1

    .line 668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMMSAvailable(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 681
    if-ne p1, v2, :cond_2

    .line 682
    const-string v3, "com.android.mms"

    invoke-static {p0, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 683
    .local v0, "isMMSInstalled":Z
    if-nez v0, :cond_1

    .line 695
    .end local v0    # "isMMSInstalled":Z
    :cond_0
    :goto_0
    return v1

    .line 686
    .restart local v0    # "isMMSInstalled":Z
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 687
    goto :goto_0

    .line 692
    .end local v0    # "isMMSInstalled":Z
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 693
    goto :goto_0
.end method

.method public static isMasterSimEnabled()Z
    .locals 3

    .prologue
    .line 210
    const-string v0, "1"

    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->mIsMasterSimEnabled:Z

    .line 216
    :goto_0
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactsUtil:isMasterSimEnabled()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->mIsMasterSimEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-boolean v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->mIsMasterSimEnabled:Z

    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->mIsMasterSimEnabled:Z

    goto :goto_0
.end method

.method public static isMultiSimDS()Z
    .locals 1

    .prologue
    .line 1418
    const/4 v0, 0x0

    return v0
.end method

.method public static isOTASP(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 861
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v0

    .line 863
    :cond_1
    const-string v1, "\\*228([0-9][0-9])?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPenMultiWindow(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 1345
    if-eqz p0, :cond_0

    .line 1346
    invoke-virtual {p0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1347
    const/4 v0, 0x1

    .line 1351
    :cond_0
    return v0
.end method

.method public static isRCSFullBranded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1580
    sget v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    if-eq v1, v0, :cond_0

    sget v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRCSeFeatureEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1576
    sget v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSecretMode(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1315
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1316
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "secret_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static isSimInitializing(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 897
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 900
    .local v1, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 901
    .local v0, "mTelMan":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 902
    .local v3, "simstate":I
    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount()I

    move-result v2

    .line 904
    .local v2, "maxcount":I
    sget-object v5, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " SimState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SimMaxCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    if-eqz v0, :cond_0

    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 907
    const/4 v4, 0x1

    .line 909
    :cond_0
    return v4

    .end local v2    # "maxcount":I
    .end local v3    # "simstate":I
    :cond_1
    move v3, v4

    .line 901
    goto :goto_0
.end method

.method public static isSimInitializing(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    .line 913
    const/4 v0, 0x0

    .line 915
    .local v0, "SIM_ZERO":I
    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 916
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v2

    .line 924
    :cond_1
    :goto_0
    return v2

    .line 919
    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 920
    .local v1, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 924
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimInitializing(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 928
    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 929
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSimInitializing(Landroid/content/Context;)Z

    move-result v4

    .line 942
    :cond_0
    :goto_0
    return v4

    .line 931
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 933
    .local v1, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {v5}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    .line 934
    .local v0, "mTelMan":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v3

    .line 935
    .local v3, "simstate":I
    :goto_1
    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount(Ljava/lang/String;)I

    move-result v2

    .line 937
    .local v2, "maxcount":I
    sget-object v6, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " SimState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SimMaxCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    if-eqz v0, :cond_0

    const/4 v6, 0x5

    if-ne v3, v6, :cond_0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    move v4, v5

    .line 940
    goto :goto_0

    .end local v2    # "maxcount":I
    .end local v3    # "simstate":I
    :cond_2
    move v3, v4

    .line 934
    goto :goto_1
.end method

.method public static isSupportHoveringUI(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1064
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTwLauncherAlive(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 288
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 289
    .local v2, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v2, :cond_0

    const-string v3, "com.sec.android.app.launcher"

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    sget-object v3, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v4, "TW Launcher is alive"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v3, 0x1

    .line 296
    .end local v2    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v3

    .line 295
    :cond_1
    sget-object v3, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v4, "TW Launcher is dead"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isUltraPowerSavingMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x200

    .line 1149
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 1150
    .local v0, "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    sget-object v1, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUltraPowerSavingMode, UPSM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 300
    move-object v0, p0

    .line 302
    .local v0, "aa":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 303
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_0
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 306
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 308
    :cond_1
    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 309
    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 311
    :cond_2
    :goto_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 312
    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 314
    :cond_3
    :goto_4
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 315
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 317
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I
    .locals 6
    .param p0, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 504
    const/4 v0, -0x1

    .line 505
    .local v0, "groupType":I
    if-nez p0, :cond_0

    .line 506
    sget-object v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v3, "value of groupInfo = null,return groupType = -1"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 531
    .end local v0    # "groupType":I
    .local v1, "groupType":I
    :goto_0
    return v1

    .line 509
    .end local v1    # "groupType":I
    .restart local v0    # "groupType":I
    :cond_0
    const-string v2, "VideoCalling"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    const/4 v0, 0x6

    :goto_1
    move v1, v0

    .line 531
    .end local v0    # "groupType":I
    .restart local v1    # "groupType":I
    goto :goto_0

    .line 511
    .end local v1    # "groupType":I
    .restart local v0    # "groupType":I
    :cond_1
    const-string v2, "vnd.sec.contact.agg.account_type"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 513
    const-string v2, "ICE"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->IsICEGroupAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 515
    const/4 v0, 0x5

    goto :goto_1

    .line 517
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 521
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 522
    const/4 v0, 0x3

    goto :goto_1

    .line 524
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 525
    const/4 v0, 0x1

    goto :goto_1

    .line 528
    :cond_5
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public static parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "linkColumnString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "accountTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 586
    :cond_0
    return-void

    .line 574
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, "|"

    invoke-direct {v0, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .local v0, "accountTypeAndDataSetTokens":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "accountTypeWithDataSet":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "/"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .local v2, "dataSetTokens":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 581
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    :cond_2
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultvalue"    # Ljava/lang/String;

    .prologue
    .line 1362
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1363
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1364
    .local v1, "str_temp":Ljava/lang/String;
    return-object v1
.end method

.method public static refreshRCSValue()V
    .locals 4

    .prologue
    .line 1607
    const/4 v2, 0x0

    sput v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    .line 1609
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    .line 1611
    .local v1, "isRCSeFeatureOn":Z
    if-eqz v1, :cond_0

    .line 1612
    const/4 v2, 0x1

    sput v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    .line 1617
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1618
    .local v0, "cscFeatures":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1619
    const-string v2, "PARTIAL_BRANDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1620
    const/4 v2, 0x3

    sput v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    .line 1626
    .end local v0    # "cscFeatures":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1621
    .restart local v0    # "cscFeatures":Ljava/lang/String;
    :cond_1
    const-string v2, "FULL_BRANDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1622
    const/4 v2, 0x2

    sput v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    goto :goto_0

    .line 1624
    :cond_2
    const/4 v2, 0x4

    sput v2, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    goto :goto_0
.end method

.method public static refreshRCSeSettingValue(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1635
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->refreshRCSValue()V

    .line 1636
    sget v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    if-nez v0, :cond_1

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1640
    :cond_1
    const/4 v6, 0x0

    .line 1641
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1642
    .local v11, "result":Z
    const/4 v1, 0x0

    .line 1644
    .local v1, "uri":Landroid/net/Uri;
    const-string v9, "3.1"

    .line 1646
    .local v9, "imsfwVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.ims.android"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1647
    .local v8, "i":Landroid/content/pm/PackageInfo;
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    .end local v8    # "i":Landroid/content/pm/PackageInfo;
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3.1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1654
    :cond_2
    const-string v0, "content://com.sec.ims.android.rcs/preferences"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1662
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1663
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1664
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1665
    .local v10, "isRcsReady":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 1666
    const/4 v11, 0x1

    .line 1668
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1676
    .end local v10    # "isRcsReady":Ljava/lang/Integer;
    :cond_4
    :goto_3
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JOYN Setting value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    if-nez v11, :cond_0

    .line 1678
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->RCS_STATE_VALUE:I

    goto :goto_0

    .line 1648
    :catch_0
    move-exception v7

    .line 1649
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get IMSFW\'s version information."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    const-string v9, "3.1"

    goto :goto_1

    .line 1657
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const-string v0, "content://com.sec.ims.android.rcs/preferences/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 1670
    :catch_1
    move-exception v7

    .line 1671
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_4

    .line 1672
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public static registerSharedPrefChangeListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 1370
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1372
    return-void
.end method

.method public static shouldApplyUiMirroring()Z
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldChangeEmergencyText()Z
    .locals 2

    .prologue
    .line 1059
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ReplaceLabelEmergency4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSweepAreaBeRestricted()Z
    .locals 3

    .prologue
    .line 1194
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SweepOperationArea"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, "sweepArea":Ljava/lang/String;
    const-string v1, "ExcludeAvatar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static tempCropImageFile(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 767
    const-string v4, "tempCropPicture"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 768
    .local v1, "mTempCropPictureFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 770
    :try_start_0
    const-string v4, "tempCropPicture"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 772
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 779
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 780
    .local v3, "parentFile":Ljava/io/File;
    if-eqz v3, :cond_1

    .line 781
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 783
    :cond_1
    return-object v1

    .line 773
    .end local v3    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 775
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 776
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1357
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1358
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1359
    return-void
.end method
