.class Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd$1;
.super Ljava/lang/Object;
.source "Xt9AutoSubstitutionsAdd.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->getTextWatcher()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 112
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;

    # invokes: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->controlMenuItem()V
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;->access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;)V

    .line 121
    return-void
.end method
