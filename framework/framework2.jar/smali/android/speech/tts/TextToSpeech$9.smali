.class Landroid/speech/tts/TextToSpeech$9;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$loc:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V
    .registers 3

    .prologue
    .line 1137
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 11
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    .line 1140
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    if-nez v5, :cond_a

    .line 1141
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1179
    :goto_9
    return-object v5

    .line 1143
    :cond_a
    const/4 v2, 0x0

    .local v2, "language":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1145
    .local v0, "country":Ljava/lang/String;
    :try_start_c
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_11
    .catch Ljava/util/MissingResourceException; {:try_start_c .. :try_end_11} :catch_6e

    move-result-object v2

    .line 1152
    :try_start_12
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 1153
    const-string/jumbo v5, "spa"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string v5, "USA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1154
    const-string v0, "MEX"
    :try_end_2b
    .catch Ljava/util/MissingResourceException; {:try_start_12 .. :try_end_2b} :catch_8f

    .line 1160
    :cond_2b
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 1167
    .local v4, "variant":Ljava/lang/String;
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;
    invoke-static {v5}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1, v5, v2, v0, v4}, Landroid/speech/tts/ITextToSpeechService;->loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1168
    .local v3, "result":I
    if-ltz v3, :cond_69

    .line 1169
    const/4 v5, 0x2

    if-ge v3, v5, :cond_47

    .line 1170
    const-string v4, ""

    .line 1171
    const/4 v5, 0x1

    if-ge v3, v5, :cond_47

    .line 1172
    const-string v0, ""

    .line 1175
    :cond_47
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v5}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "language"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v5}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "country"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v5}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "variant"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :cond_69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_9

    .line 1146
    .end local v3    # "result":I
    .end local v4    # "variant":Ljava/lang/String;
    :catch_6e
    move-exception v1

    .line 1147
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string v5, "TextToSpeech"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_9

    .line 1155
    .end local v1    # "e":Ljava/util/MissingResourceException;
    :catch_8f
    move-exception v1

    .line 1156
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    const-string v5, "TextToSpeech"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_9
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$9;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
