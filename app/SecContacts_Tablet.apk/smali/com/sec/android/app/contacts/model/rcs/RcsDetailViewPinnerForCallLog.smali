.class public Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
.super Ljava/lang/Object;
.source "RcsDetailViewPinnerForCallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field isRcs:Z

.field mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

.field mCallDetail:Landroid/view/View;

.field mCallDetailLand:Landroid/view/View;

.field mFtBar:Landroid/widget/LinearLayout;

.field mFtButton:Landroid/widget/Button;

.field mFtIntent:Landroid/content/Intent;

.field mImBar:Landroid/widget/LinearLayout;

.field mImButton:Landroid/widget/Button;

.field mImIntent:Landroid/content/Intent;

.field mIsFTEnabled:Z

.field mIsIMEnabled:Z

.field mIsObserverRegisted:Z

.field private mIsOwnFtCapable:Z

.field private mQueryUri:Landroid/net/Uri;

.field mRcsCursor:Landroid/database/Cursor;

.field private mRcsServiceObserver:Landroid/database/ContentObserver;

.field private mRcsServiceOwnObserver:Landroid/database/ContentObserver;

.field private mTelNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    .line 40
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    .line 43
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    .line 44
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    .line 45
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    .line 47
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    .line 49
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImBar:Landroid/widget/LinearLayout;

    .line 53
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtBar:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetailLand:Landroid/view/View;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mTelNumber:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsOwnFtCapable:Z

    .line 87
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .line 88
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceObserver:Landroid/database/ContentObserver;

    .line 91
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->extractUIComponets()V

    .line 104
    return-void
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 390
    .local v0, "detector":Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "telNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 371
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v1, "Hardcoded normalization !"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 377
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isIntenationalFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const-string v0, "+34"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 381
    :cond_0
    return-object p1
.end method


# virtual methods
.method extractUIComponets()V
    .locals 6

    .prologue
    const v5, 0x7f09041b

    const v4, 0x7f09041a

    const v3, 0x7f090419

    const v2, 0x7f090418

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetailLand:Landroid/view/View;

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtBar:Landroid/widget/LinearLayout;

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImBar:Landroid/widget/LinearLayout;

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtBar:Landroid/widget/LinearLayout;

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImBar:Landroid/widget/LinearLayout;

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetailLand:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    goto :goto_0
.end method

.method public generateTelUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "telNumber"    # Ljava/lang/String;

    .prologue
    .line 349
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v3, "generateTelUri(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-nez p1, :cond_0

    .line 351
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 362
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "result":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-object v0
.end method

.method public isIntenationalFormat(Ljava/lang/String;)Z
    .locals 3
    .param p1, "telNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public pinFillDataAtTheEnd(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mTelNumber:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->query()V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->registerObserver()V

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->readDataFromQuery()V

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->updateUi()V

    .line 131
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    goto :goto_0
.end method

.method public pinOnDestroy()V
    .locals 2

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_1
    return-void
.end method

.method query()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 158
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v1, "query"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SIP_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mTelNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mQueryUri:Landroid/net/Uri;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mQueryUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->queryOwn()V

    .line 178
    :cond_1
    return-void
.end method

.method queryOwn()V
    .locals 8

    .prologue
    .line 134
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 140
    .local v7, "ownCursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsOwnFtCapable:Z

    .line 142
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v1, "queryOwn : ownCursor == null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v7    # "ownCursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 146
    .restart local v7    # "ownCursor":Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->readDataFromQueryOwn(Landroid/database/Cursor;)V

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v7    # "ownCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 151
    .local v6, "ise":Ljava/lang/IllegalStateException;
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOwn : RCS Query Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readDataFromQuery()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v11, 0x0

    .line 233
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    .line 234
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    .line 235
    iput-object v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    .line 236
    iput-object v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    .line 237
    sget-object v11, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v12, "readDataFromQuery"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 239
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "feature_tag"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 240
    .local v7, "serviceTagNo":I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "is_enabled"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "enabledNo":I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "int_name"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 242
    .local v6, "intentNameNo":I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "int_category"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 245
    .local v5, "intentCategoryNo":I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "sip_uri"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 249
    .local v9, "sipUriNo":I
    :cond_0
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, "tag":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 251
    .local v0, "enabled":I
    sget-object v11, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tag : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", enabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-lez v0, :cond_2

    .line 254
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 255
    .local v8, "sipUri":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "intentAction":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "intentCategory":Ljava/lang/String;
    sget-object v11, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sip_uri : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v2, Landroid/content/Intent;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 259
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 262
    iput-boolean v14, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    .line 263
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    .line 267
    :cond_1
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 268
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    .line 269
    iput-boolean v14, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    .line 272
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "intentAction":Ljava/lang/String;
    .end local v4    # "intentCategory":Ljava/lang/String;
    .end local v8    # "sipUri":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 275
    .end local v0    # "enabled":I
    .end local v1    # "enabledNo":I
    .end local v5    # "intentCategoryNo":I
    .end local v6    # "intentNameNo":I
    .end local v7    # "serviceTagNo":I
    .end local v9    # "sipUriNo":I
    .end local v10    # "tag":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readDataFromQueryOwn(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 210
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v5, "readDataFromQueryOwn"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 214
    const-string v4, "feature_tag"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 215
    .local v2, "serviceTagNo":I
    const-string v4, "is_enabled"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 217
    .local v1, "enabledNo":I
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "tag":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 220
    .local v0, "enabled":I
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromQueryOwn tag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz v3, :cond_0

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-lez v0, :cond_0

    .line 223
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsOwnFtCapable:Z

    .line 230
    .end local v0    # "enabled":I
    .end local v1    # "enabledNo":I
    .end local v2    # "serviceTagNo":I
    .end local v3    # "tag":Ljava/lang/String;
    :goto_0
    return-void

    .line 229
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsOwnFtCapable:Z

    goto :goto_0
.end method

.method registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 181
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mQueryUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_OWN_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    .line 187
    :cond_0
    return-void
.end method

.method updateUi()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->extractUIComponets()V

    .line 193
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 203
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 204
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsOwnFtCapable:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 207
    return-void

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 204
    goto :goto_1
.end method
