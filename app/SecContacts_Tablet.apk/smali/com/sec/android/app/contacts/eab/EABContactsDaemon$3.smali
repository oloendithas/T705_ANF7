.class Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;
.super Ljava/lang/Object;
.source "EABContactsDaemon.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleLVCSettingChange()V
    .locals 2

    .prologue
    .line 452
    const-string v0, "handleLVCSettingChange called"

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 454
    const-string v0, "initVOLTESettings called"

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartPublishMethod(Z)V

    .line 459
    :cond_0
    return-void
.end method

.method private handleMobileSettingChange()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 441
    const-string v0, "handleMobileSettingChange called"

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentLVCSetting is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mLVCSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    sget v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mLVCSetting:I

    if-ne v0, v2, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartPublishMethod(Z)V

    .line 448
    :cond_0
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 346
    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EAB-ContactsEABDaemon onSharedPreferenceChanged called key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v2, ""

    .line 351
    .local v2, "str_temp":Ljava/lang/String;
    const-string v3, "mobile_data"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$100(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "mobile_data"

    const-string v5, "mobile_data"

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MOBILE_DATA is changed ... with value  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 362
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "TempVolTESetting":I
    sget v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mMobileData:I

    if-eq v0, v3, :cond_0

    .line 365
    sput v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mMobileData:I

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMobileData :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mMobileData:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->handleMobileSettingChange()V

    .line 437
    .end local v0    # "TempVolTESetting":I
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const-string v3, "Capability_Discovery"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$100(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "Capability_Discovery"

    const-string v5, "Capability_Discovery"

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CAPABILITY_DISCOVERY is changed ... with value  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 385
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 388
    .restart local v0    # "TempVolTESetting":I
    sget v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    if-eq v0, v3, :cond_0

    .line 389
    sput v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capability Discovery is changed ... with value  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 395
    const-string v3, " Capability discovery is changed to 1 so send list subscribe and update all contacts"

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartPublishMethod(Z)V

    .line 397
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->StartSubscribeForAllContacts(Z)V

    goto :goto_0

    .line 398
    :cond_2
    sget v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    if-nez v3, :cond_0

    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$200()Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$200()Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->ValidateIMSRegistration()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    const-string v3, "RANI UNPUBLISH to be sent  : "

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 402
    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$200()Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->unpublishCapabilitiesAndAvailability()I

    goto/16 :goto_0

    .line 410
    .end local v0    # "TempVolTESetting":I
    :cond_3
    const-string v3, "Capability_Poll_Interval"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$100(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "Capability_Poll_Interval"

    const-string v5, "Capability_Poll_Interval"

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CAPABILITY_POLL_INTERVAL is changed ... with value  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 422
    const/4 v1, -0x1

    .line 424
    .local v1, "currentCapabilityPollInterval":I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 425
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 426
    sget v3, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPollInterval:I

    if-eq v1, v3, :cond_0

    .line 427
    sput v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPollInterval:I

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPollInterval is changed ... with value  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mPollInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 431
    iget-object v3, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$3;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->NotifyCapabilityPollIntervalChange()V

    goto/16 :goto_0
.end method
