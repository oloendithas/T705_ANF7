.class Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;
.super Ljava/lang/Object;
.source "Xt9AutoSubstitutionsDel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->makeDeletePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 251
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$700(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v3

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->deleteAutoSubstitution(Ljava/lang/CharSequence;)I

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$700(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$700(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    .line 255
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$700(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 258
    return-void
.end method
