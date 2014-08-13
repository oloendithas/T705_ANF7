.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
.super Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
.source "SetDefaultActivity.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DetailViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public collapseCount:I

.field public data:Ljava/lang/String;

.field public isPrimary:Z

.field public isReverse:Z

.field public kind:Ljava/lang/String;

.field public mHeaderTitle:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mImage:Landroid/graphics/Bitmap;

.field public mIsChecked:Ljava/lang/Boolean;

.field public mListData:Ljava/lang/String;

.field public mMainText:Ljava/lang/String;

.field public mMainTextReverse:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUpperTextReverse:Ljava/lang/String;

.field public mimetype:Ljava/lang/String;

.field public showingEntryId:J

.field public type:I

.field public typeString:Ljava/lang/String;

.field public which:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1149
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;-><init>(I)V

    .line 1127
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->type:I

    .line 1128
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 1146
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->collapseCount:I

    .line 1150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->isEnabled:Z

    .line 1151
    return-void
.end method

.method public static fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p3, "dataId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 1187
    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;-><init>()V

    .line 1188
    .local v0, "entry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    iput-wide p3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 1189
    iput-wide p3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    .line 1190
    iput-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    .line 1191
    iput-object p1, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1192
    iput-boolean v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 1194
    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-nez v3, :cond_4

    :cond_0
    const-string v3, ""

    :goto_0
    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1196
    # invokes: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p2, p5, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$2300(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 1198
    const-string v3, "vnd.android.cursor.item/photo"

    iget-object v4, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1199
    const v3, 0x7f0e02a0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1202
    :cond_1
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1203
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->type:I

    .line 1206
    const-string v3, ""

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1207
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

    .line 1208
    .local v2, "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->type:I

    if-ne v3, v4, :cond_2

    .line 1209
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 1211
    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1222
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_3
    :goto_1
    return-object v0

    .line 1194
    :cond_4
    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1214
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1

    .line 1220
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_6
    const-string v3, ""

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public collapseWith(Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)Z
    .locals 4
    .param p1, "entry"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .prologue
    const/4 v1, 0x1

    .line 1155
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    const/4 v1, 0x0

    .line 1170
    :goto_0
    return v1

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->type:I

    invoke-static {v0, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v3, p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->type:I

    invoke-static {v2, v3}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v2

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    if-nez v0, :cond_1

    .line 1161
    iget v0, p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->type:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->type:I

    .line 1162
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1163
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1164
    iget-wide v2, p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    iput-wide v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    .line 1167
    :cond_1
    iget-boolean v0, p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 1169
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->collapseCount:I

    goto :goto_0

    .line 1167
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    goto :goto_1
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1125
    check-cast p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->collapseWith(Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)Z

    move-result v0

    return v0
.end method

.method public shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)Z
    .locals 5
    .param p1, "entry"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .prologue
    const/4 v0, 0x0

    .line 1175
    if-nez p1, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return v0

    .line 1179
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1125
    check-cast p1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)Z

    move-result v0

    return v0
.end method
