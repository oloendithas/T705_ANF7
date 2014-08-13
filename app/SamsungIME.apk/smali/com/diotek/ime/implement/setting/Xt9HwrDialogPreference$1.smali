.class Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$1;
.super Ljava/lang/Object;
.source "Xt9HwrDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 72
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    # setter for: Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I
    invoke-static {v0, p3}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->access$002(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;I)I

    .line 73
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->access$000(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;)I

    move-result v1

    # invokes: Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->saveInputMethodToSet(I)V
    invoke-static {v0, v1}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->access$100(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;I)V

    .line 75
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->onActivityDestroy()V

    .line 76
    return-void
.end method
