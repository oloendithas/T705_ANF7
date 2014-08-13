.class Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$1;
.super Ljava/lang/Object;
.source "PhrasesDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;

    # invokes: Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->checkSelectAll()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->setEnableActionBarMenu()V

    .line 196
    return-void
.end method
