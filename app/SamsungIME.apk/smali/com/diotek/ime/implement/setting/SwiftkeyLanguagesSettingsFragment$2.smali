.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;
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
    .line 258
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 261
    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$100()Landroid/widget/PopupWindow;

    move-result-object v5

    if-eqz v5, :cond_3

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$100()Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 263
    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$100()Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 264
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    .line 265
    .local v3, "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "availablelanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    .line 268
    .local v2, "lp":Lcom/touchtype_fluency/util/LanguagePack;
    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 271
    :cond_1
    invoke-virtual {v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    .line 272
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    invoke-static {v5, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0

    .line 277
    .end local v2    # "lp":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_2
    const/4 v5, 0x0

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 278
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->notifyUpdateSelectedLanguageList()V
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    .line 279
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-virtual {v5, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    .line 284
    .end local v0    # "availablelanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "lpm":Lcom/touchtype_fluency/util/LanguagePackManager;
    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
