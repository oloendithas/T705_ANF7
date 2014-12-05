.class Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;
.super Landroid/os/Handler;
.source "KeyguardVoiceEngineThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 179
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_192

    .line 273
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Sent MSG cannot be handled here"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_e
    :goto_e
    return-void

    .line 182
    :sswitch_f
    :try_start_f
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "initialize WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I

    .line 184
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "initialize WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_26} :catch_27

    goto :goto_e

    .line 185
    :catch_27
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_30
    :try_start_30
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$100(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$200(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$300(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 195
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "startVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$102(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 197
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x1

    # invokes: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->updateNotification(Z)V
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$400(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)V

    .line 198
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startVerify(I)I

    .line 199
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$500(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;->refreshVoiceUnlockHelpText()V

    .line 200
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "startVerify WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_85} :catch_86

    goto :goto_e

    .line 203
    :catch_86
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while startVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_8f
    :try_start_8f
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$100(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v4

    if-ne v4, v3, :cond_e

    .line 210
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "terminateVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 212
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$102(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 213
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    # invokes: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->updateNotification(Z)V
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$400(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)V

    .line 214
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "terminateVerify WakeUpCmdRecognizer finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_c2} :catch_c4

    goto/16 :goto_e

    .line 216
    :catch_c4
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while terminateVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_ce
    :try_start_ce
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 223
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$100(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 224
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "cleanUp stopVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 226
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$102(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 227
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "cleanUp stopVerify WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_fb
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "cleanUp destroy WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->destroy()V

    .line 231
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$002(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 232
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "cleanUp destroy WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_118} :catch_11a

    goto/16 :goto_e

    .line 234
    :catch_11a
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while terminating WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_124
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # setter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$602(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 241
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->removeAllMsgs()V

    .line 242
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 243
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->cleanUpVariables()V
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$700(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V

    goto/16 :goto_e

    .line 246
    :sswitch_13c
    const/4 v2, 0x0

    .line 247
    .local v2, "tmpIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->choiceMultipleWakeUpIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 248
    if-eqz v2, :cond_178

    .line 249
    const/high16 v5, 0x10200000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_166

    .line 251
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->isSecure()Z
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$800(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v1

    .line 253
    .local v1, "isSecureLock":Z
    const-string v5, "isSecure"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    const-string v5, "AUTO_LISTEN"

    if-nez v1, :cond_17f

    :goto_163
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    .end local v1    # "isSecureLock":Z
    :cond_166
    :try_start_166
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_16d
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_16d} :catch_181

    .line 263
    :goto_16d
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$900(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 267
    :cond_178
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->dismissLockScreen()V
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->access$1000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V

    goto/16 :goto_e

    .restart local v1    # "isSecureLock":Z
    :cond_17f
    move v3, v4

    .line 255
    goto :goto_163

    .line 260
    .end local v1    # "isSecureLock":Z
    :catch_181
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "dismissKeyguard remoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16d

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "tmpIntent":Landroid/content/Intent;
    :sswitch_18a
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto/16 :goto_e

    .line 179
    nop

    :sswitch_data_192
    .sparse-switch
        0x6e -> :sswitch_f
        0x78 -> :sswitch_30
        0x82 -> :sswitch_8f
        0x8c -> :sswitch_ce
        0x96 -> :sswitch_124
        0xa0 -> :sswitch_13c
        0xaa -> :sswitch_18a
    .end sparse-switch
.end method
