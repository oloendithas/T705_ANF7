.class public Lcom/sec/android/inputmethod/CscUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CscUpdateReceiver.java"


# static fields
.field private static final ACTION_UPDATE_PREFERENCES:Ljava/lang/String; = "com.sec.android.inputmethod.UpdatePreferences"

.field private static final CSC_TAG_AUTO_REPLACEMENT:Ljava/lang/String; = "AutoReplacement"

.field private static final CSC_TAG_KEYPAD_TYPE:Ljava/lang/String; = "KeypadType"

.field private static final CSC_TAG_TRACE:Ljava/lang/String; = "ContinuousInput"

.field private static final CSC_TAG_XT9:Ljava/lang/String; = "T9Enabling"

.field private static final PREFERENCE_SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod_preferences"

.field public static final PREF_KEYPAD_TYPE:Ljava/lang/String; = "SETTINGS_DEFAULT_KEYPAD_TYPE"

.field public static final PREF_USE_AUTO_REPLACEMENT:Ljava/lang/String; = "SETTINGS_DEFAULT_AUTO_CORRECTION"

.field public static final PREF_USE_TRACE:Ljava/lang/String; = "SETTINGS_DEFAULT_TRACE"

.field public static final PREF_USE_XT9:Ljava/lang/String; = "SETTINGS_DEFAULT_PREDICTION_ON"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mKey:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getTagValueReturnBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onUpdateSharedPreferences(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const-string v0, "com.sec.android.inputmethod_preferences"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mPrefs:Landroid/content/SharedPreferences;

    .line 44
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v0, "KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mKey:Ljava/lang/String;

    .line 48
    const-string v0, "VALUE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mValue:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mKey:Ljava/lang/String;

    const-string v1, "T9Enabling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SETTINGS_DEFAULT_PREDICTION_ON"

    iget-object v2, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/CscUpdateReceiver;->getTagValueReturnBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    :cond_1
    return-void

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mKey:Ljava/lang/String;

    const-string v1, "ContinuousInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SETTINGS_DEFAULT_TRACE"

    iget-object v2, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/CscUpdateReceiver;->getTagValueReturnBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mKey:Ljava/lang/String;

    const-string v1, "AutoReplacement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    iget-object v2, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/CscUpdateReceiver;->getTagValueReturnBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mKey:Ljava/lang/String;

    const-string v1, "KeypadType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mValue:Ljava/lang/String;

    const-string v1, "QWERTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mValue:Ljava/lang/String;

    const-string v1, "3x4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 63
    :cond_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/CscUpdateReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const-string v0, "com.sec.android.inputmethod.UpdatePreferences"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/CscUpdateReceiver;->onUpdateSharedPreferences(Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    :cond_0
    return-void
.end method
