.class Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;


# direct methods
.method constructor <init>(Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;)V
    .registers 2

    .prologue
    .line 834
    iput-object p1, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$2;->this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .registers 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 851
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 842
    # getter for: Landroid/webkitsec/AccessibilityInjector;->DEBUG:Z
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 843
    # getter for: Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->WRAP_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper$2;->this$0:Landroid/webkitsec/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Failed to speak utterance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_2c
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 838
    return-void
.end method
