.class Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;
.super Ljava/lang/Object;
.source "AbstractPhoneticSpellScrollLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setSpellToSpellLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;I)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput p2, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    # getter for: Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->access$000(Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->val$index:I

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->updatePhoneticSpell(I)V

    .line 263
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    iget v2, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->val$index:I

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 264
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setSpellToSpellLayout(Z)V

    .line 265
    return-void
.end method
