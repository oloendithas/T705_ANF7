.class Lcom/android/contacts/editor/KindSectionView$1;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$1;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$1;->this$0:Lcom/android/contacts/editor/KindSectionView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/KindSectionView;->addItem(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$1;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 158
    return-void
.end method
