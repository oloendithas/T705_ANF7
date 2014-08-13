.class Lcom/android/contacts/VoLTEStateTracker$1;
.super Landroid/database/ContentObserver;
.source "VoLTEStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/VoLTEStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method constructor <init>(Lcom/android/contacts/VoLTEStateTracker;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/contacts/VoLTEStateTracker$1;->this$0:Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/VoLTEStateTracker$1;->this$0:Lcom/android/contacts/VoLTEStateTracker;

    # getter for: Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/VoLTEStateTracker;->access$000(Lcom/android/contacts/VoLTEStateTracker;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/contacts/VoLTEStateTracker$1;->this$0:Lcom/android/contacts/VoLTEStateTracker;

    # getter for: Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/VoLTEStateTracker;->access$000(Lcom/android/contacts/VoLTEStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/contacts/VoLTEStateTracker$1;->this$0:Lcom/android/contacts/VoLTEStateTracker;

    # getter for: Lcom/android/contacts/VoLTEStateTracker;->mListener:Lcom/android/contacts/OnVoLTEStateChangedListener;
    invoke-static {v0}, Lcom/android/contacts/VoLTEStateTracker;->access$100(Lcom/android/contacts/VoLTEStateTracker;)Lcom/android/contacts/OnVoLTEStateChangedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/contacts/OnVoLTEStateChangedListener;->onReceive(Z)V

    .line 84
    const-string v0, "VolteStateTracker"

    const-string v1, "mRegistrationStateObserver/onChange(): WFC is registered"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v0, "VolteStateTracker"

    const-string v1, "mRegistrationStateObserver/onChange(): mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
