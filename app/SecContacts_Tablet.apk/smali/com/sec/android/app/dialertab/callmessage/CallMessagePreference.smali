.class public Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;
.super Ljava/lang/Object;
.source "CallMessagePreference.java"


# static fields
.field public static final MAX_PHRASE_COUNT:I = 0xa

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "CallMessageData"

.field public static final TAG:Ljava/lang/String; = "CallMessagePreference"


# instance fields
.field public final DO_NOT_SHOW_HELP_MESSAGE:Ljava/lang/String;

.field public final FILLED_DEFAULT_PHRASES:Ljava/lang/String;

.field public final MAX_COUNT:I

.field public final SAVE_COUNT:Ljava/lang/String;

.field public final SAVE_ID:[Ljava/lang/String;

.field public final SAVE_PHRASE_COUNT:Ljava/lang/String;

.field public final SAVE_PHRASE_ID:[Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "text1"

    aput-object v1, v0, v4

    const-string v1, "text2"

    aput-object v1, v0, v5

    const-string v1, "text3"

    aput-object v1, v0, v6

    const-string v1, "text4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "text5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->SAVE_ID:[Ljava/lang/String;

    .line 28
    const-string v0, "count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->SAVE_COUNT:Ljava/lang/String;

    .line 29
    iput v3, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->MAX_COUNT:I

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "phrase1"

    aput-object v1, v0, v4

    const-string v1, "phrase2"

    aput-object v1, v0, v5

    const-string v1, "phrase3"

    aput-object v1, v0, v6

    const-string v1, "phrase4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "phrase5"

    aput-object v2, v0, v1

    const-string v1, "phrase6"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "phrase7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "phrase8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phrase9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phrase10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->SAVE_PHRASE_ID:[Ljava/lang/String;

    .line 34
    const-string v0, "phrase_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->SAVE_PHRASE_COUNT:Ljava/lang/String;

    .line 37
    const-string v0, "fill_default"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->FILLED_DEFAULT_PHRASES:Ljava/lang/String;

    .line 39
    const-string v0, "do_not_show_help_message"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->DO_NOT_SHOW_HELP_MESSAGE:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private savePreference([Ljava/lang/String;)Z
    .locals 7
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x0

    .line 111
    if-nez p1, :cond_0

    .line 112
    const-string v5, "CallMessagePreference"

    const-string v6, "saveData is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return v4

    .line 116
    :cond_0
    array-length v5, p1

    if-le v5, v2, :cond_1

    .line 118
    .local v2, "len":I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    const-string v6, "CallMessageData"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 119
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "count"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 124
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->SAVE_ID:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v5, p1, v1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    array-length v2, p1

    goto :goto_1

    .line 126
    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPhrase(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 216
    iget-object v3, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    const-string v4, "CallMessageData"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 217
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 218
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "phrase_count"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 219
    .local v0, "count":I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->SAVE_PHRASE_ID:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    const-string v3, "phrase_count"

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 223
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    return-void
.end method

.method public isDoNotShowHelpMsg()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    const-string v2, "CallMessageData"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "do_not_show_help_message"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isFilledDefaultPhrases()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    const-string v2, "CallMessageData"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "fill_default"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public loadPreference()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 90
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    const-string v6, "CallMessageData"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 92
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v5, "count"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, "count":I
    if-nez v0, :cond_1

    move-object v1, v4

    .line 103
    :cond_0
    return-object v1

    .line 97
    :cond_1
    new-array v1, v0, [Ljava/lang/String;

    .line 99
    .local v1, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 100
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->SAVE_ID:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public loadPreferencePhrase()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 134
    const-string v5, "CallMessagePreference"

    const-string v6, "loadPreferencePhrase"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    const-string v6, "CallMessageData"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 137
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v5, "phrase_count"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 140
    const-string v5, "CallMessagePreference"

    const-string v6, "loadPreferencePhrase count is 0"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 150
    :cond_0
    return-object v1

    .line 144
    :cond_1
    new-array v1, v0, [Ljava/lang/String;

    .line 146
    .local v1, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 147
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->SAVE_PHRASE_ID:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public savePreferencePhrase(ILjava/lang/String;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 182
    const-string v3, "CallMessagePreference"

    const-string v4, "savePreferencePhrase"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/16 v3, 0xa

    if-ge p1, v3, :cond_0

    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    .line 185
    :cond_0
    const-string v3, "CallMessagePreference"

    const-string v4, "savePreferencePhrase error"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return v2

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    const-string v4, "CallMessageData"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->SAVE_PHRASE_ID:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public savePreferencePhrase([Ljava/lang/String;)Z
    .locals 7
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0xa

    const/4 v4, 0x0

    .line 157
    const-string v5, "CallMessagePreference"

    const-string v6, "savePreferencePhrase"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-nez p1, :cond_0

    .line 160
    const-string v5, "CallMessagePreference"

    const-string v6, "saveData is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return v4

    .line 164
    :cond_0
    array-length v5, p1

    if-le v5, v2, :cond_1

    .line 166
    .local v2, "len":I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    const-string v6, "CallMessageData"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 167
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "phrase_count"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 172
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->SAVE_PHRASE_ID:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v5, p1, v1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 164
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    array-length v2, p1

    goto :goto_1

    .line 174
    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setDoNotShowHelpMsg()V
    .locals 5

    .prologue
    .line 234
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    const-string v3, "CallMessageData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 235
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "do_not_show_help_message"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    return-void
.end method

.method public setFilledDefaultPhrases()V
    .locals 5

    .prologue
    .line 206
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->mContext:Landroid/content/Context;

    const-string v3, "CallMessageData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 207
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fill_default"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    return-void
.end method

.method public useCallMessage(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 47
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->loadPreference()[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "data":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-nez v6, :cond_2

    .line 53
    :cond_1
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 54
    .local v4, "saveData":[Ljava/lang/String;
    aput-object p1, v4, v7

    .line 55
    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->savePreference([Ljava/lang/String;)Z

    goto :goto_0

    .line 59
    .end local v4    # "saveData":[Ljava/lang/String;
    :cond_2
    const/4 v2, -0x1

    .line 60
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_3

    .line 61
    aget-object v6, v0, v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 62
    move v2, v1

    .line 67
    :cond_3
    if-ne v2, v8, :cond_5

    array-length v6, v0

    add-int/lit8 v5, v6, 0x1

    .line 68
    .local v5, "saveLen":I
    :goto_2
    new-array v4, v5, [Ljava/lang/String;

    .line 69
    .restart local v4    # "saveData":[Ljava/lang/String;
    aput-object p1, v4, v7

    .line 70
    array-length v6, v0

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    array-length v6, v0

    add-int/lit8 v3, v6, -0x1

    .line 72
    .local v3, "len":I
    :goto_3
    if-ne v2, v8, :cond_7

    .line 73
    const/4 v1, 0x1

    :goto_4
    if-gt v1, v3, :cond_9

    .line 74
    add-int/lit8 v6, v1, -0x1

    aget-object v6, v0, v6

    aput-object v6, v4, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 60
    .end local v3    # "len":I
    .end local v4    # "saveData":[Ljava/lang/String;
    .end local v5    # "saveLen":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_5
    array-length v5, v0

    goto :goto_2

    .line 70
    .restart local v4    # "saveData":[Ljava/lang/String;
    .restart local v5    # "saveLen":I
    :cond_6
    array-length v3, v0

    goto :goto_3

    .line 77
    .restart local v3    # "len":I
    :cond_7
    const/4 v1, 0x1

    :goto_5
    if-gt v1, v2, :cond_8

    .line 78
    add-int/lit8 v6, v1, -0x1

    aget-object v6, v0, v6

    aput-object v6, v4, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 80
    :cond_8
    add-int/lit8 v1, v2, 0x1

    :goto_6
    array-length v6, v0

    if-ge v1, v6, :cond_9

    .line 81
    aget-object v6, v0, v1

    aput-object v6, v4, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 84
    :cond_9
    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->savePreference([Ljava/lang/String;)Z

    goto :goto_0
.end method
