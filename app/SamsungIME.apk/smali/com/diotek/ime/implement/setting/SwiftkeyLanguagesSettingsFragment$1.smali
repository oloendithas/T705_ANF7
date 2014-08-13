.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v9, 0x7f0800c3

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 193
    .local v4, "languageLongPressed":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v7

    .line 194
    .local v7, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    .line 195
    .local v0, "availablelanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v5, 0x0

    .line 197
    .local v5, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/touchtype_fluency/util/LanguagePack;

    .line 198
    .local v6, "lp":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 199
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-object v9, v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 201
    :cond_1
    move-object v5, v6

    goto :goto_0

    .line 206
    .end local v6    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_2
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "preload_language":Ljava/lang/String;
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0013

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "checked_language":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 209
    invoke-static {v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 210
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 220
    :goto_1
    const/4 v9, 0x1

    .line 222
    :goto_2
    return v9

    .line 212
    :cond_3
    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 213
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 215
    :cond_4
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v9

    const-class v10, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "languageLongPressed"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 222
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method
