.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$16;
.super Ljava/lang/Object;
.source "CallDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

.field final synthetic val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$16;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$16;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$16;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 1821
    return-void
.end method
