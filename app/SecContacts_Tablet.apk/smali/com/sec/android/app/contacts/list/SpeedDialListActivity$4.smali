.class Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

.field final synthetic val$NoContactView:Landroid/widget/ImageView;

.field final synthetic val$contactNumView:Landroid/widget/TextView;

.field final synthetic val$nameView:Landroid/widget/TextView;

.field final synthetic val$photoContainer:Landroid/view/View;

.field final synthetic val$photoTouchOverlay:Landroid/view/View;

.field final synthetic val$photoView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$nameView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$photoContainer:Landroid/view/View;

    iput-object p4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$photoView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$photoTouchOverlay:Landroid/view/View;

    iput-object p6, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$NoContactView:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$contactNumView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1114
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1116
    .local v3, "position":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1118
    .local v2, "parentItem":Landroid/view/View;
    const v5, 0x7f090467

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1119
    .local v1, "itemNumTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$500(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    if-eqz v1, :cond_0

    .line 1121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$nameView:Landroid/widget/TextView;

    const v6, 0x7f0e01fd

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1125
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$photoContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$photoView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1127
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$photoTouchOverlay:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 1128
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$photoTouchOverlay:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$NoContactView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1130
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->val$contactNumView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1132
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1133
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key_number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1134
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v5, v5, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1135
    return-void
.end method
