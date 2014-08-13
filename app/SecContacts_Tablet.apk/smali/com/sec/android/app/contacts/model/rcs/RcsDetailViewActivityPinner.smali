.class public Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;
.super Ljava/lang/Object;
.source "RcsDetailViewActivityPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$RcsServiceObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field isRcs:Z

.field mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

.field mFtBar:Landroid/widget/LinearLayout;

.field mFtButton:Landroid/widget/Button;

.field mFtIntent:Landroid/content/Intent;

.field mImBar:Landroid/widget/LinearLayout;

.field mImButton:Landroid/widget/Button;

.field mImIntent:Landroid/content/Intent;

.field mIsFTEnabled:Z

.field mIsIMEnabled:Z

.field mIsObserverRegisted:Z

.field private mQueryUri:Landroid/net/Uri;

.field mRcsCursor:Landroid/database/Cursor;

.field private mRcsServiceObserver:Landroid/database/ContentObserver;

.field private mTelNumber:Ljava/lang/String;

.field private mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

.field private mUriGeneratorServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->LOG_TAG:Ljava/lang/String;

    .line 57
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->isRcs:Z

    .line 42
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    .line 45
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsObserverRegisted:Z

    .line 46
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsIMEnabled:Z

    .line 47
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsFTEnabled:Z

    .line 49
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImIntent:Landroid/content/Intent;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtIntent:Landroid/content/Intent;

    .line 51
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImButton:Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtButton:Landroid/widget/Button;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImBar:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtBar:Landroid/widget/LinearLayout;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mTelNumber:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$1;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorServiceConnection:Landroid/content/ServiceConnection;

    .line 108
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    .line 109
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$RcsServiceObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$RcsServiceObserver;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->extractUIComponets()V

    .line 112
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;Lcom/samsung/rcs/urigenerator/IUriGeneratorService;)Lcom/samsung/rcs/urigenerator/IUriGeneratorService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;
    .param p1, "x1"    # Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private autoBindUriGeneratorService()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 272
    :cond_0
    return-void
.end method

.method private generateTelUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "telNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->TAG:Ljava/lang/String;

    const-string v3, "generateTelUri(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method private isIntenationalFormat(Ljava/lang/String;)Z
    .locals 3
    .param p1, "telNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "telNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->TAG:Ljava/lang/String;

    const-string v1, "Hardcoded normalization !"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 343
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->isIntenationalFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const-string v0, "+34"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 347
    :cond_0
    return-object p1
.end method


# virtual methods
.method extractUIComponets()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v1, 0x7f09041a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtBar:Landroid/widget/LinearLayout;

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v1, 0x7f090418

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImBar:Landroid/widget/LinearLayout;

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v1, 0x7f09041b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtButton:Landroid/widget/Button;

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v1, 0x7f090419

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImButton:Landroid/widget/Button;

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$2;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$3;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    return-void
.end method

.method public pinFillDataAtTheEnd(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->autoBindUriGeneratorService()V

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    if-nez v1, :cond_0

    .line 125
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not bind to IUriGeneratorService"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    invoke-interface {v1, p1}, Lcom/samsung/rcs/urigenerator/IUriGeneratorService;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mTelNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mTelNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->query()V

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->isRcs:Z

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->registerObserver()V

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->readDataFromQuery()V

    .line 155
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->updateUi()V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Exception using remote uri generator, reverting to deprecated method"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mTelNumber:Ljava/lang/String;

    goto :goto_1

    .line 151
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->isRcs:Z

    goto :goto_2
.end method

.method public pinOnCreate()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->autoBindUriGeneratorService()V

    .line 266
    return-void
.end method

.method public pinOnDestroy()V
    .locals 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsObserverRegisted:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 259
    :cond_2
    return-void
.end method

.method query()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 160
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SIP_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mTelNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mQueryUri:Landroid/net/Uri;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mQueryUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    .line 172
    return-void
.end method

.method readDataFromQuery()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v11, 0x0

    .line 200
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsIMEnabled:Z

    .line 201
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsFTEnabled:Z

    .line 202
    iput-object v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImIntent:Landroid/content/Intent;

    .line 203
    iput-object v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtIntent:Landroid/content/Intent;

    .line 205
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 206
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "feature_tag"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 207
    .local v7, "serviceTagNo":I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "is_enabled"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, "enabledNo":I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "int_name"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 209
    .local v6, "intentNameNo":I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "int_category"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 212
    .local v5, "intentCategoryNo":I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "sip_uri"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 216
    .local v9, "sipUriNo":I
    :cond_0
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "tag":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 219
    .local v0, "enabled":I
    if-lez v0, :cond_2

    .line 221
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, "sipUri":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "intentAction":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "intentCategory":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 229
    iput-boolean v13, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsIMEnabled:Z

    .line 230
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImIntent:Landroid/content/Intent;

    .line 234
    :cond_1
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 235
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtIntent:Landroid/content/Intent;

    .line 236
    iput-boolean v13, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsFTEnabled:Z

    .line 239
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "intentAction":Ljava/lang/String;
    .end local v4    # "intentCategory":Ljava/lang/String;
    .end local v8    # "sipUri":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 242
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

.method registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 175
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsObserverRegisted:Z

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mQueryUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsObserverRegisted:Z

    .line 180
    :cond_0
    return-void
.end method

.method updateUi()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->isRcs:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsIMEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsFTEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
