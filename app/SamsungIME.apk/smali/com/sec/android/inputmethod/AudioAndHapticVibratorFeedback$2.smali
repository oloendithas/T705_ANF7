.class Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$2;
.super Ljava/lang/Object;
.source "AudioAndHapticVibratorFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playSoundEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

.field final synthetic val$primaryCode:I


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;I)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$2;->this$0:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    iput p2, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$2;->val$primaryCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$2;->this$0:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    # getter for: Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->access$000(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$2;->val$primaryCode:I

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->playSoundEffect(I)V

    .line 50
    return-void
.end method
