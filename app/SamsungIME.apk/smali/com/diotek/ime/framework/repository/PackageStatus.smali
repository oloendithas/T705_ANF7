.class public Lcom/diotek/ime/framework/repository/PackageStatus;
.super Ljava/lang/Object;
.source "PackageStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/PackageStatus;


# instance fields
.field private mPackage:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

.field private mPackageNameList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/PackageStatus;->sInstance:Lcom/diotek/ime/framework/repository/PackageStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->NONE_SPECIFIC_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackage:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    .line 56
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.android.mms"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->MMS_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.mms.kor"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->KOR_MMS_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.chaton"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.chatonforcanada"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_CA_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.coolots.chaton"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_V_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.google.android.apps.maps"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->GOOGLE_MAPS_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.popupcalculator"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CALCULATOR_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.videoplayer"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->VIDEOPLAYER_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.google.android.gsf.login"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->GSF_LOGIN_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.keb.android.mbank"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->KEB_APPLICATION_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.nate.android.portalmini"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->NATE_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.iloen.melon"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->MELON_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.boatbrowser.free"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->BOATBROWSER_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.memo"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->MEMO_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.diotek.smemo"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->PEN_MEMO_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.snotebook"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->SNOTE_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.ocr"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->OCR_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.ocrlite"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->OCR_LITE_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.ocr3"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->OCR_3_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.nhn.android.search"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->NAVER_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "net.daum.android.daum"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->DAUM_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.EDictionary"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->DIODICT_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.diotek.diodict3.phone.kor"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->DIODICT_NEW_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.diotek.diodict3.hc.samsung.p5"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->DIODICT_TABLET_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.diotek.diodict.service.ServiceKeyDiodict"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->DIODICT_PHONE_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.infraware.polarisoffice4"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->POLARISOFFICE_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.android.browser"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->BROWSER_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.sbrowser"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->SBROWSER_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.android.email"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->EMAIL_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.google.android.talk"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->GTALK_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.android.imftest"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->IMFTEST_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.android.contacts"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CONTACTS_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.utorrent.client"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->Utorrent_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.hancom.office.hword.editor.hword_apk"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->HWORD_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.hancom.office.hcell.editor.hcell_apk"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->HCELL_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.hancom.office.hshow.editor.hshow_apk"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->HSHOW_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.android.keyguard"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->KEYGUARD_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    const-string v1, "com.android.stk"

    sget-object v2, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->SIM_TOOL:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public static getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/diotek/ime/framework/repository/PackageStatus;->sInstance:Lcom/diotek/ime/framework/repository/PackageStatus;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/diotek/ime/framework/repository/PackageStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PackageStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PackageStatus;->sInstance:Lcom/diotek/ime/framework/repository/PackageStatus;

    .line 111
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PackageStatus;->sInstance:Lcom/diotek/ime/framework/repository/PackageStatus;

    iget-object v0, v0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackage:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    return-object v0
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lcom/diotek/ime/framework/repository/PackageStatus;->sInstance:Lcom/diotek/ime/framework/repository/PackageStatus;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/diotek/ime/framework/repository/PackageStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PackageStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PackageStatus;->sInstance:Lcom/diotek/ime/framework/repository/PackageStatus;

    .line 100
    :cond_0
    if-eqz p0, :cond_1

    .line 101
    sget-object v1, Lcom/diotek/ime/framework/repository/PackageStatus;->sInstance:Lcom/diotek/ime/framework/repository/PackageStatus;

    sget-object v0, Lcom/diotek/ime/framework/repository/PackageStatus;->sInstance:Lcom/diotek/ime/framework/repository/PackageStatus;

    iget-object v0, v0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackageNameList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    iput-object v0, v1, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackage:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/repository/PackageStatus;->sInstance:Lcom/diotek/ime/framework/repository/PackageStatus;

    sget-object v1, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->NONE_SPECIFIC_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    iput-object v1, v0, Lcom/diotek/ime/framework/repository/PackageStatus;->mPackage:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    goto :goto_0
.end method
