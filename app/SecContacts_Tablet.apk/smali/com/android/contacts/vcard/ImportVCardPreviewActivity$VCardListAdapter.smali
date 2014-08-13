.class public Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ImportVCardPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VCardListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/vcard/VCardData;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/vcard/VCardData;",
            ">;"
        }
    .end annotation
.end field

.field layoutResourceId:I

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/vcard/VCardData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1140
    .local p4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/VCardData;>;"
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .line 1141
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;->data:Ljava/util/ArrayList;

    .line 1142
    iput p3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;->layoutResourceId:I

    .line 1143
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;->context:Landroid/content/Context;

    .line 1144
    iput-object p4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;->data:Ljava/util/ArrayList;

    .line 1145
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1149
    move-object v2, p2

    .line 1150
    .local v2, "row":Landroid/view/View;
    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/vcard/VCardData;

    invoke-virtual {v5}, Lcom/android/contacts/vcard/VCardData;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1152
    .local v4, "strName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1153
    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;->context:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1154
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;->layoutResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1157
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f090499

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1158
    .local v1, "name":Landroid/widget/TextView;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1159
    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const v6, 0x7f0e009c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/vcard/VCardData;

    invoke-virtual {v5}, Lcom/android/contacts/vcard/VCardData;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1165
    .local v3, "strAddress":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1166
    const v5, 0x7f09049a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    :cond_1
    return-object v2

    .line 1161
    .end local v3    # "strAddress":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
