.class public Lcom/diotek/ime/implement/setting/LanguageItemPreference;
.super Landroid/preference/Preference;
.source "LanguageItemPreference.java"


# instance fields
.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mLanguage:Lcom/diotek/ime/framework/common/Language;

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/diotek/ime/framework/common/Language;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "language"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 16
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 17
    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    .line 21
    iput-object p2, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    .line 23
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 27
    :cond_0
    const v0, 0x7f030071

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 28
    return-void
.end method

.method private currentSelected()V
    .locals 3

    .prologue
    .line 31
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    .line 32
    .local v0, "defaultValue":I
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 48
    const v0, 0x7f0800a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 49
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 50
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->currentSelected()V

    .line 51
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 43
    :cond_0
    return-void
.end method
