.class Lcom/diotek/ime/implement/setting/Xt9MyWords$2;
.super Ljava/lang/Object;
.source "Xt9MyWords.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9MyWords;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9MyWords;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9MyWords;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v0, 0x7f0d00a1

    .line 152
    .local v0, "CurrentMode":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWords;

    const-class v3, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    const-string v2, "CURRENT_MODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v3, "EDITTING_WORD"

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWords;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWords;->mArrayAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9MyWords;->access$000(Lcom/diotek/ime/implement/setting/Xt9MyWords;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWords$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWords;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method
