.class Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
.super Landroid/os/AsyncTask;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSmartcardPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyPasswordWithCACTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field errorMsgId:I

.field password:Ljava/lang/String;

.field status:Z

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 227
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    .line 229
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    .line 230
    iput v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView;Lcom/android/keyguard/KeyguardSmartcardPINView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardSmartcardPINView;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardSmartcardPINView$1;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 244
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doInBackground():VerifyPasswordWithCACTask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordWithCAC(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 247
    .local v0, "ret":Ljava/lang/Integer;
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPasswordWithCAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 253
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 254
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnPostExecute():VerifyPasswordWithCACTask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPostExecute():VerifyPasswordWithCACTask result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    .line 257
    iput v4, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    .line 258
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_9e

    .line 279
    :pswitch_32
    const v1, 0x7f060114

    iput v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    .line 282
    :goto_37
    const/4 v0, 0x0

    .line 283
    .local v0, "keyguardscpinview":Lcom/android/keyguard/KeyguardSmartcardPINView;
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_6a

    .line 285
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask mCurrent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_47
    return-void

    .line 260
    .end local v0    # "keyguardscpinview":Lcom/android/keyguard/KeyguardSmartcardPINView;
    :pswitch_48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    goto :goto_37

    .line 263
    :pswitch_4c
    const v1, 0x7f060110

    iput v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_37

    .line 266
    :pswitch_52
    const v1, 0x7f060111

    iput v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_37

    .line 269
    :pswitch_58
    const v1, 0x7f060112

    iput v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_37

    .line 272
    :pswitch_5e
    const v1, 0x7f060113

    iput v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_37

    .line 275
    :pswitch_64
    const v1, 0x7f060115

    iput v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_37

    .line 288
    .restart local v0    # "keyguardscpinview":Lcom/android/keyguard/KeyguardSmartcardPINView;
    :cond_6a
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "keyguardscpinview":Lcom/android/keyguard/KeyguardSmartcardPINView;
    check-cast v0, Lcom/android/keyguard/KeyguardSmartcardPINView;

    .restart local v0    # "keyguardscpinview":Lcom/android/keyguard/KeyguardSmartcardPINView;
    if-nez v0, :cond_80

    .line 290
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask activity == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 293
    :cond_80
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$500(Lcom/android/keyguard/KeyguardSmartcardPINView;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_90

    .line 295
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask mHandler == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 299
    :cond_90
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$500(Lcom/android/keyguard/KeyguardSmartcardPINView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_47

    .line 258
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4c
        :pswitch_52
        :pswitch_58
        :pswitch_5e
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_64
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 234
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 235
    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnPreExecute():VerifyPasswordWithCACTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f06010f

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$200(Lcom/android/keyguard/KeyguardSmartcardPINView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 239
    # setter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$302(Z)Z

    .line 240
    return-void
.end method
