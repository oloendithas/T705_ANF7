.class Lcom/android/contacts/editor/KindSectionView$3;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView;->onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;

.field final synthetic val$editor:Lcom/android/contacts/editor/Editor;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/Editor;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$3;->this$0:Lcom/android/contacts/editor/KindSectionView;

    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView$3;->val$editor:Lcom/android/contacts/editor/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$3;->val$editor:Lcom/android/contacts/editor/Editor;

    invoke-interface {v0}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    .line 190
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$3;->this$0:Lcom/android/contacts/editor/KindSectionView;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView$3;->this$0:Lcom/android/contacts/editor/KindSectionView;

    # getter for: Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/contacts/editor/KindSectionView;->access$000(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    # invokes: Lcom/android/contacts/editor/KindSectionView;->reBuildEditors(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/KindSectionView;->access$100(Lcom/android/contacts/editor/KindSectionView;I)V

    .line 191
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$3;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 192
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$3;->this$0:Lcom/android/contacts/editor/KindSectionView;

    # invokes: Lcom/android/contacts/editor/KindSectionView;->updateLayoutPadding()V
    invoke-static {v0}, Lcom/android/contacts/editor/KindSectionView;->access$200(Lcom/android/contacts/editor/KindSectionView;)V

    .line 193
    return-void
.end method
