.class Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/RawContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddfieldsSelectedListener"
.end annotation


# instance fields
.field mAddfields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1143
    .local p2, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mAddfields:Ljava/util/ArrayList;

    .line 1144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    .line 1145
    iput-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mAddfields:Ljava/util/ArrayList;

    .line 1146
    return-void
.end method


# virtual methods
.method public addField(I)V
    .locals 5
    .param p1, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 1185
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mAddfields:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1186
    .local v0, "childView":Landroid/view/View;
    instance-of v2, v0, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v2, :cond_4

    move-object v1, v0

    .line 1187
    check-cast v1, Lcom/android/contacts/editor/KindSectionView;

    .line 1188
    .local v1, "view":Lcom/android/contacts/editor/KindSectionView;
    const-string v2, "#phoneticName"

    invoke-virtual {v1}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1189
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # setter for: Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z
    invoke-static {v2, v4}, Lcom/android/contacts/editor/RawContactEditorView;->access$202(Lcom/android/contacts/editor/RawContactEditorView;Z)Z

    .line 1190
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # invokes: Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V
    invoke-static {v2}, Lcom/android/contacts/editor/RawContactEditorView;->access$400(Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 1192
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1194
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # getter for: Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;
    invoke-static {v2}, Lcom/android/contacts/editor/RawContactEditorView;->access$500(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/editor/PhoneticNameEditorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildValues()V

    .line 1198
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    new-instance v3, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;)V

    # invokes: Lcom/android/contacts/editor/RawContactEditorView;->postWhenWindowFocused(Ljava/lang/Runnable;)V
    invoke-static {v2, v3}, Lcom/android/contacts/editor/RawContactEditorView;->access$700(Lcom/android/contacts/editor/RawContactEditorView;Ljava/lang/Runnable;)V

    .line 1221
    .end local v1    # "view":Lcom/android/contacts/editor/KindSectionView;
    :cond_1
    :goto_0
    return-void

    .line 1211
    .restart local v1    # "view":Lcom/android/contacts/editor/KindSectionView;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # getter for: Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z
    invoke-static {v2}, Lcom/android/contacts/editor/RawContactEditorView;->access$200(Lcom/android/contacts/editor/RawContactEditorView;)Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1212
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/KindSectionView;->addItem(Z)V

    goto :goto_0

    .line 1214
    :cond_3
    invoke-virtual {v1, v4}, Lcom/android/contacts/editor/KindSectionView;->addItem(Z)V

    goto :goto_0

    .line 1216
    .end local v1    # "view":Lcom/android/contacts/editor/KindSectionView;
    :cond_4
    instance-of v2, v0, Lcom/sec/android/app/contacts/editor/AdditiveSectionView;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 1217
    check-cast v1, Lcom/sec/android/app/contacts/editor/AdditiveSectionView;

    .line 1219
    .local v1, "view":Lcom/sec/android/app/contacts/editor/AdditiveSectionView;
    invoke-interface {v1, v4}, Lcom/sec/android/app/contacts/editor/AdditiveSectionView;->setVisibilitySectionView(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1149
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 1150
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 1151
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z
    invoke-static {v1, v2}, Lcom/android/contacts/editor/RawContactEditorView;->access$202(Lcom/android/contacts/editor/RawContactEditorView;Z)Z

    .line 1152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mAddfields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1153
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->addField(I)V

    .line 1152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1157
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mAddfields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1158
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # getter for: Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/contacts/editor/RawContactEditorView;->access$300(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    :cond_2
    if-eqz p1, :cond_3

    .line 1161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1175
    .end local v0    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 1164
    :cond_4
    const/4 v1, -0x2

    if-ne p2, v1, :cond_5

    .line 1165
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 1167
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 1168
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1169
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1171
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, p3, :cond_0

    .line 1180
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1182
    :cond_0
    return-void
.end method
