.class public Lcom/sec/android/app/dialertab/calllog/CallLogActivity;
.super Landroid/app/Activity;
.source "CallLogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogActivity"

.field public static isExit:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->isExit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getFragment()Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->setContentView(I)V

    .line 58
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iput-object p0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 62
    const v0, 0x7f0e04c6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->setTitle(I)V

    .line 65
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->setDefaultKeyMode(I)V

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->isExit:Z

    .line 71
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 98
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 82
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 83
    .local v0, "callPressDiff":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v4

    goto :goto_1

    .line 95
    .end local v0    # "callPressDiff":J
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :pswitch_1
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->isExit:Z

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 103
    sparse-switch p1, :sswitch_data_0

    .line 133
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 108
    :sswitch_0
    const-string v2, "feature_folder_type"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    .line 111
    .local v1, "twListview":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    const-string v2, "CallLogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "twListview.getSelectedItemPosition() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v2

    if-gtz v2, :cond_0

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    goto :goto_0

    .line 120
    .end local v1    # "twListview":Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    :sswitch_1
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 122
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    .end local v0    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->callSelectedEntry()V

    .line 131
    const/4 v2, 0x1

    goto :goto_1

    .line 126
    :catch_0
    move-exception v2

    goto :goto_2

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->isExit:Z

    .line 139
    return-void
.end method
