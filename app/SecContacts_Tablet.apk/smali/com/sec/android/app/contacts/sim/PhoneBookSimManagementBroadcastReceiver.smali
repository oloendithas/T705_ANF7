.class public Lcom/sec/android/app/contacts/sim/PhoneBookSimManagementBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneBookSimManagementBroadcastReceiver.java"


# static fields
.field static final EXTRA_SIM_ID:Ljava/lang/String; = "simcard_sim_id"

.field static final EXTRA_SIM_SLOT:Ljava/lang/String; = "simSlot"

.field static final TAG:Ljava/lang/String; = "[PhonebookSMBR] "


# instance fields
.field private isSimIcon:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookSimManagementBroadcastReceiver;->isSimIcon:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/PhoneBookSimManagementBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/PhoneBookSimManagementBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 51
    .local v1, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v2, "android.settings.SIMCARD_MGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/sim/PhoneBookSimManagementBroadcastReceiver;->isSimIcon:Z

    .line 53
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/sim/PhoneBookSimManagementBroadcastReceiver;->isSimIcon:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimIconChanged(Z)V

    .line 54
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimInfo()[Z

    .line 56
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/sim/PhoneBookSimManagementBroadcastReceiver;->isSimIcon:Z

    invoke-static {v2}, Lcom/android/contacts/activities/ContactEditorActivity;->setSimInfoChanged(Z)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v2, "ACTION_REGCARD_CARDNAME_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ACTION_REGCARD_ICON_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.settings.SIMCARD_MGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->resetSimInfo()V

    .line 60
    invoke-virtual {v1, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimIconChanged(Z)V

    .line 61
    invoke-static {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->setSimInfoChanged(Z)V

    goto :goto_0

    .line 62
    :cond_3
    const-string v2, "DEFAULT_CALL_LINE_RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const-string v2, "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    const-string v2, "[PhonebookSMBR] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action is not correct : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
