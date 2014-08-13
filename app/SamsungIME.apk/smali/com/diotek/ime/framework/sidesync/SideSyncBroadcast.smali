.class public Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;
.super Ljava/lang/Object;
.source "SideSyncBroadcast.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

.field private mSideSyncMainReceiver:Landroid/content/BroadcastReceiver;

.field private mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/diotek/ime/framework/sidesync/SideSyncManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    .line 20
    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    .line 22
    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    .line 26
    iput-object p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    .line 31
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    .line 32
    invoke-direct {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->addActionToIntentFilter()V

    .line 33
    new-instance v0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast$1;-><init>(Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->broadcastEventParser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private addActionToIntentFilter()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_HIDE_SIP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.sidesync.source.SET_BINDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_INPUT_KEY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_LANGUAGE_ID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "SIDESYNC.action.INPUT_TEXT_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "SIDESYNC.action.PREDICTIVE_TEXT_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "SIDESYNC.action.CTRL_PRESSED_STATE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "SIDESYNC.action.SHIFT_PRESSED_STATE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "SIDESYNC.action.EXIST_TEXT_BEFORE_CURSOR_STATE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private broadcastEventParser(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSB] broadcastEventParser - action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_HIDE_SIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncSourceHideSoftINput(Landroid/content/Context;Landroid/content/Intent;)V

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    const-string v1, "com.sec.android.sidesync.source.SET_BINDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncSourceBinder(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :cond_3
    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_INPUT_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncKeyCode(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    :cond_4
    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_LANGUAGE_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncLanguageState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :cond_5
    const-string v1, "SIDESYNC.action.INPUT_TEXT_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncInputText(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :cond_6
    const-string v1, "SIDESYNC.action.PREDICTIVE_TEXT_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncPredictiveText(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :cond_7
    const-string v1, "SIDESYNC.action.CTRL_PRESSED_STATE_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncCtrlPressedState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    :cond_8
    const-string v1, "SIDESYNC.action.SHIFT_PRESSED_STATE_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncShiftPressedState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :cond_9
    const-string v1, "SIDESYNC.action.EXIST_TEXT_BEFORE_CURSOR_STATE_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->setSideSyncExistTextBeforeCursorState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setSideSyncCtrlPressedState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    const-string v1, "SIDESYNC.extra.CTRL_PRESSED_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "pressed":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncCtrlPressedState(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private setSideSyncExistTextBeforeCursorState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    const-string v1, "SIDESYNC.extra.EXIST_TEXT_BEFORE_CURSOR_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "pressed":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncExistTextBeforeCursorState(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private setSideSyncInputText(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    const-string v1, "SIDESYNC.extra.INPUT_TEXT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "inputText":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncInputText(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private setSideSyncKeyCode(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    const-string v1, "KEY_CODE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, "keyCode":I
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncKeyCode(I)V

    .line 134
    return-void
.end method

.method private setSideSyncLanguageState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    const-string v1, "LANGUAGE_ID"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "languageID":I
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncLanguage(I)V

    .line 144
    return-void
.end method

.method private setSideSyncPredictiveText(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    const-string v1, "SIDESYNC.extra.PREDICTIVE_TEXT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "predictiveText":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncPredictiveText(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private setSideSyncShiftPressedState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    const-string v1, "SIDESYNC.extra.SHIFT_PRESSED_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "pressed":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncShiftPressedState(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private setSideSyncSourceBinder(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 117
    const-string v2, "BINDER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 118
    .local v1, "sideSyncSourceBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v2, v1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncSourceBinder(Landroid/os/IBinder;)V

    .line 124
    .end local v1    # "sideSyncSourceBinder":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "SamsungIME"

    const-string v3, "[SSB] setSideSyncSourceBinder - extra is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSideSyncSourceHideSoftINput(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncManager:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncSourceHideSoftINput()V

    .line 107
    return-void
.end method


# virtual methods
.method public getSideSyncMainIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public getSideSyncMainReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;->mSideSyncMainReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method
