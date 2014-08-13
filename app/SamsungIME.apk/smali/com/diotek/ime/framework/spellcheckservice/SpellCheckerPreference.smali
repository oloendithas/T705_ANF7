.class public Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SpellCheckerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->setSpellCheckerService(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->setSpellCheckerService(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->setSpellCheckerService(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    .line 73
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public setSpellCheckerService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    if-nez v2, :cond_1

    .line 37
    const-string v2, "textservices"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 38
    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v2, :cond_0

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 51
    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 50
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v2, :cond_0

    goto :goto_0
.end method
