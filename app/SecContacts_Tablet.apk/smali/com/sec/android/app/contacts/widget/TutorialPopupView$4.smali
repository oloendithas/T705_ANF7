.class Lcom/sec/android/app/contacts/widget/TutorialPopupView$4;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$4;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$4;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$4;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$1100(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0432

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    return-void
.end method
