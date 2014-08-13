.class public Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public accountIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public accountNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public actionDescription:I

.field public actionIcon:I

.field public chatCapability:I

.field public collapseCount:I

.field public context:Landroid/content/Context;

.field public data:Ljava/lang/String;

.field public footerLine:Ljava/lang/CharSequence;

.field public fourthActionDescription:I

.field public fourthActionIcon:I

.field public fourthIntent:Landroid/content/Intent;

.field public ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public intent:Landroid/content/Intent;

.field public isBlacklist:Z

.field private isNoSync:Z

.field public isPrimary:Z

.field public isWritable:Z

.field public kind:Ljava/lang/String;

.field private mIsInSubSection:Z

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public presence:I

.field public primaryLine:I

.field public resPackageName:Ljava/lang/String;

.field public secondaryActionDescription:I

.field public secondaryActionIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public showingEntryId:J

.field public thirdActionDescription:I

.field public thirdActionIcon:I

.field public thirdIntent:Landroid/content/Intent;

.field public type:I

.field public typeString:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field private videoEnableSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 4356
    invoke-direct {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 4298
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 4303
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 4306
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 4307
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->resPackageName:Ljava/lang/String;

    .line 4308
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 4309
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    .line 4310
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 4311
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    .line 4312
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isWritable:Z

    .line 4313
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 4314
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 4316
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 4317
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 4318
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    .line 4319
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionDescription:I

    .line 4322
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthIntent:Landroid/content/Intent;

    .line 4324
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthActionIcon:I

    .line 4326
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fourthActionDescription:I

    .line 4330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    .line 4332
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    .line 4334
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 4335
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    .line 4336
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->primaryLine:I

    .line 4338
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountIcon:Ljava/util/ArrayList;

    .line 4340
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 4342
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    .line 4344
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z

    .line 4347
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->videoEnableSwitch:Z

    .line 4350
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountNames:Ljava/util/ArrayList;

    .line 4353
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 4357
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled:Z

    .line 4358
    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    .line 4296
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 4296
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isNoSync:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    .line 4296
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->videoEnableSwitch:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 4296
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->videoEnableSwitch:Z

    return p1
.end method

.method public static fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p3, "dataId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;
    .param p6, "isDirectoryEntry"    # Z
    .param p7, "directoryId"    # J

    .prologue
    .line 4365
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 4366
    .local v1, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-wide p3, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 4367
    iput-wide p3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->showingEntryId:J

    .line 4368
    iput-object p0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 4369
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 4370
    if-eqz p6, :cond_0

    .line 4371
    iget-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "directory"

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 4374
    :cond_0
    iput-object p1, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 4376
    if-eqz p2, :cond_3

    .line 4377
    iget v4, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v4, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-nez v4, :cond_4

    :cond_1
    const-string v4, ""

    :goto_0
    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 4379
    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p2, p5, p0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2600(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 4381
    const-string v4, "vnd.android.cursor.item/phone_v2"

    iget-object v5, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4384
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 4387
    const-string v4, ""

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 4389
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditType;

    .line 4390
    .local v3, "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v4, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v5, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    if-ne v4, v5, :cond_6

    .line 4391
    iget-object v4, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 4393
    iget v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 4435
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_2
    :goto_2
    iget v4, p2, Lcom/android/contacts/model/DataKind;->iconRes:I

    if-lez v4, :cond_3

    .line 4436
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->resourcePackageName:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->resPackageName:Ljava/lang/String;

    .line 4437
    iget-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    if-eqz v4, :cond_e

    const-string v4, "vnd.android.cursor.item/phone_v2"

    iget-object v5, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->isVoLTEEnabled:Z
    invoke-static {}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2700()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4439
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4440
    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4441
    const v4, 0x7f02068a

    iput v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    .line 4458
    :cond_3
    :goto_3
    return-object v1

    .line 4377
    :cond_4
    iget v4, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 4396
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    iget-object v4, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_2

    .line 4400
    :cond_6
    iget v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1

    .line 4404
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_7
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4406
    :try_start_0
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 4409
    const-string v4, ""

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 4411
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 4412
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditType;

    .line 4413
    .restart local v3    # "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v4, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v5, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    if-ne v4, v5, :cond_8

    .line 4414
    iget-object v4, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 4417
    iget v4, v3, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 4426
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :catch_0
    move-exception v0

    .line 4427
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4428
    const-string v4, ""

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto/16 :goto_2

    .line 4420
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_9
    :try_start_1
    iget-object v4, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 4432
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_a
    const-string v4, ""

    iput-object v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto/16 :goto_2

    .line 4443
    :cond_b
    const-string v4, "feature_kt"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4444
    const v4, 0x7f02067b

    iput v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto/16 :goto_3

    .line 4446
    :cond_c
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4447
    const v4, 0x7f02067c

    iput v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto/16 :goto_3

    .line 4450
    :cond_d
    const v4, 0x7f020679

    iput v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto/16 :goto_3

    .line 4453
    :cond_e
    iget v4, p2, Lcom/android/contacts/model/DataKind;->iconRes:I

    iput v4, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto/16 :goto_3
.end method


# virtual methods
.method public applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 1
    .param p1, "status"    # Lcom/android/contacts/util/DataStatus;
    .param p2, "fillData"    # Z

    .prologue
    .line 4469
    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 4470
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4471
    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 4472
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 4475
    :cond_0
    return-object p0
.end method

.method public click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 3
    .param p1, "clickedView"    # Landroid/view/View;
    .param p2, "fragmentListener"    # Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .prologue
    .line 4552
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 4553
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4576
    :cond_0
    :goto_0
    return-void

    .line 4556
    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 4557
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->isNeedConfirm(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4558
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-nez v0, :cond_0

    .line 4564
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->createPermissionPopup(Landroid/content/Context;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 4568
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_4

    .line 4570
    const-string v0, "vnd.android.cursor.item/relation"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getSelectionActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4575
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {p2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 4
    .param p1, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    const/4 v1, 0x1

    .line 4489
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4490
    const/4 v1, 0x0

    .line 4520
    :goto_0
    return v1

    .line 4494
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v0, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v2, v3}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v2

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-nez v0, :cond_1

    .line 4496
    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 4497
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 4498
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 4499
    iget-wide v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    iput-wide v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->showingEntryId:J

    .line 4503
    :cond_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 4506
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v0

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v2}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4508
    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 4512
    :cond_2
    iget-boolean v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 4513
    iget-boolean v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    .line 4518
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4519
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    goto :goto_0

    .line 4512
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    goto :goto_1

    .line 4513
    :cond_4
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    goto :goto_2
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4296
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    return v0
.end method

.method public isInSubSection()Z
    .locals 1

    .prologue
    .line 4483
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    return v0
.end method

.method public setIsInSubSection(Z)V
    .locals 0
    .param p1, "isInSubSection"    # Z

    .prologue
    .line 4479
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    .line 4480
    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 7
    .param p1, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    const/4 v6, 0x0

    .line 4525
    if-nez p1, :cond_0

    move v0, v6

    .line 4547
    :goto_0
    return v0

    .line 4529
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vnd.android.cursor.item/contact_event"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vnd.android.cursor.item/contact_event"

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4531
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 4532
    goto :goto_0

    .line 4535
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 4536
    goto :goto_0

    .line 4540
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    iget v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    if-eq v0, v1, :cond_4

    :cond_3
    move v0, v6

    .line 4544
    goto :goto_0

    .line 4547
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4296
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    return v0
.end method
