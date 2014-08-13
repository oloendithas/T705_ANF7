.class Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$ListViewItemClickListner;
.super Ljava/lang/Object;
.source "PhrasesDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewItemClickListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$ListViewItemClickListner;->this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$1;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$ListViewItemClickListner;-><init>(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 214
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v1, 0x7f09042d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 215
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$ListViewItemClickListner;->this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;

    # invokes: Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->updateSelectAll()V
    invoke-static {v1}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;)V

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$ListViewItemClickListner;->this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;->setEnableActionBarMenu()V

    .line 218
    return-void

    .line 215
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
