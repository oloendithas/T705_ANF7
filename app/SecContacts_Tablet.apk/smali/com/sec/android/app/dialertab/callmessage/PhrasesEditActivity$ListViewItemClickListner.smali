.class Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity$ListViewItemClickListner;
.super Ljava/lang/Object;
.source "PhrasesEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewItemClickListner"
.end annotation


# instance fields
.field mStringArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity$ListViewItemClickListner;->this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity$ListViewItemClickListner;->mStringArray:Ljava/util/ArrayList;

    .line 140
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
    .line 144
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity$ListViewItemClickListner;->this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity$ListViewItemClickListner;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->selectedMessage(Ljava/lang/String;I)V
    invoke-static {v1, v0, p3}, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->access$000(Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;Ljava/lang/String;I)V

    .line 145
    return-void
.end method
