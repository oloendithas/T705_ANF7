.class Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd$1;
.super Ljava/lang/Object;
.source "Xt9MyWordsAdd.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->getTextWatcher()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 109
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 113
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;

    # invokes: Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->controlMenuItem()V
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;->access$000(Lcom/diotek/ime/implement/setting/Xt9MyWordsAdd;)V

    .line 118
    return-void
.end method
