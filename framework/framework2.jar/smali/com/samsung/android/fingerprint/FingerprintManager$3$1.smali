.class Lcom/samsung/android/fingerprint/FingerprintManager$3$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$3;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/fingerprint/FingerprintManager$3;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager$3;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .registers 3

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$3;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_56

    .line 1331
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1311
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_26

    .line 1312
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$3;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$000()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$500()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v2

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$600()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$700()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    goto :goto_7

    .line 1314
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 1315
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    sparse-switch v0, :sswitch_data_60

    goto :goto_7

    .line 1324
    :sswitch_35
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$3;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollFinishResult(I)V

    .line 1325
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$500()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    goto :goto_7

    .line 1317
    :sswitch_45
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$3;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollFinishResult(I)V

    .line 1318
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$500()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    goto :goto_7

    .line 1305
    nop

    :pswitch_data_56
    .packed-switch 0xb
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1315
    :sswitch_data_60
    .sparse-switch
        0x4 -> :sswitch_35
        0x7 -> :sswitch_35
        0x8 -> :sswitch_45
        0xb -> :sswitch_35
        0x33 -> :sswitch_35
    .end sparse-switch
.end method
