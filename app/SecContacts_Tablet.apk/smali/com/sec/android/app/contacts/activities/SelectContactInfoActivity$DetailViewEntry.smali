.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
.super Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DetailViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public collapseCount:I

.field public data:Ljava/lang/String;

.field public kind:Ljava/lang/String;

.field public mMainText:Ljava/lang/String;

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public type:I

.field public typeString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1070
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;-><init>(I)V

    .line 1059
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    .line 1060
    iput v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 1067
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->collapseCount:I

    .line 1071
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isEnabled:Z

    .line 1072
    return-void
.end method

.method public static fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p3, "dataId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1108
    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;-><init>()V

    .line 1109
    .local v0, "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    iput-wide p3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    .line 1110
    iput-object p1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1112
    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-nez v3, :cond_4

    :cond_0
    const-string v3, ""

    :goto_0
    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1114
    # invokes: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p2, p5, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$700(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 1116
    const-string v3, "vnd.android.cursor.item/photo"

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1117
    const v3, 0x7f0e02a0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1120
    :cond_1
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1121
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    .line 1124
    const-string v3, ""

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1125
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    .line 1126
    .local v2, "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    if-ne v3, v4, :cond_2

    .line 1127
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 1129
    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1140
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_3
    :goto_1
    return-object v0

    .line 1112
    :cond_4
    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1132
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1

    .line 1138
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_6
    const-string v3, ""

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public collapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 1076
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    .line 1091
    :goto_0
    return v0

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    invoke-static {v0, v1}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    invoke-static {v1, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1082
    iget v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    .line 1083
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1084
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1088
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    iget v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 1090
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->collapseCount:I

    .line 1091
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1057
    check-cast p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->collapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)Z

    move-result v0

    return v0
.end method

.method public shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)Z
    .locals 5
    .param p1, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    const/4 v0, 0x0

    .line 1096
    if-nez p1, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return v0

    .line 1100
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1057
    check-cast p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)Z

    move-result v0

    return v0
.end method
