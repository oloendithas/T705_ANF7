.class public Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;
.super Landroid/preference/DialogPreference;
.source "DeletePersonalizedDataDialog.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field protected mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 28
    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 35
    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->init()V

    .line 36
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 40
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mPrefs:Landroid/content/SharedPreferences;

    .line 41
    return-void
.end method

.method private resetUpdatedTime()V
    .locals 5

    .prologue
    .line 61
    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    .line 63
    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "gmail_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "facebook_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "twitter_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "messaging_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "contacts_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    const-string v2, "connect"

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 72
    .local v1, "mainConnectPreference":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_4

    .line 73
    const-string v2, "connect_gmail_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    .line 74
    .local v0, "connectPreference":Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
    if-eqz v0, :cond_0

    .line 75
    const v2, 0x7f0d0202

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 78
    :cond_0
    const-string v2, "connect_facebook_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "connectPreference":Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
    check-cast v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    .line 79
    .restart local v0    # "connectPreference":Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
    if-eqz v0, :cond_1

    .line 80
    const v2, 0x7f0d0201

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 83
    :cond_1
    const-string v2, "connect_twitter_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "connectPreference":Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
    check-cast v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    .line 84
    .restart local v0    # "connectPreference":Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
    if-eqz v0, :cond_2

    .line 85
    const v2, 0x7f0d0203

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 88
    :cond_2
    const-string v2, "connect_messaging_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "connectPreference":Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
    check-cast v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    .line 89
    .restart local v0    # "connectPreference":Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
    if-eqz v0, :cond_3

    .line 90
    const v2, 0x7f0d0205

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 93
    :cond_3
    const-string v2, "connect_contacts_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "connectPreference":Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
    check-cast v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    .line 94
    .restart local v0    # "connectPreference":Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
    if-eqz v0, :cond_4

    .line 95
    const v2, 0x7f0d0206

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 98
    .end local v0    # "connectPreference":Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
    :cond_4
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->resetUpdatedTime()V

    .line 54
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->resetDLMData()S

    .line 56
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d021f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 47
    return-void
.end method
