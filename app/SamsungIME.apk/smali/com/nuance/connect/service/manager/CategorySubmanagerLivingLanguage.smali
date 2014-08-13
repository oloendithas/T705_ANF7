.class public Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;
.super Ljava/lang/Object;
.source "CategorySubmanagerLivingLanguage.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$1;
    }
.end annotation


# static fields
.field private static final FIRST_TIME_DOWNLOADED:Ljava/lang/String; = "FIRST_TIME_DOWNLOADED"

.field private static final MESSAGES_HANDLED:[I

.field private static final PROCESS_DELAY:I = 0x2710


# instance fields
.field private final categoriesManaged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private enabled:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final parent:Lcom/nuance/connect/service/manager/CategoryManager;

.field private timeLastProcessed:J

.field private final typesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_FOREGROUND:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->MESSAGES_HANDLED:[I

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;)V
    .locals 4
    .param p1, "parent"    # Lcom/nuance/connect/service/manager/CategoryManager;
    .param p2, "client"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/ArrayList;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->timeLastProcessed:J

    .line 52
    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    .line 53
    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    .line 54
    return-void
.end method

.method private findVariantLanguageCategory(ILjava/lang/String;I)Ljava/lang/String;
    .locals 16
    .param p1, "languageId"    # I
    .param p2, "variant"    # Ljava/lang/String;
    .param p3, "categoryId"    # I

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "findVariantLanguageCategory("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") for keyboardId 0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v13}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v13

    sget-object v14, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v13}, Lcom/nuance/connect/util/InstallMetadata;->hasPackages()Z

    move-result v13

    if-nez v13, :cond_1

    .line 293
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "findVariantLanguageCategory() - none exist. done."

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 294
    const/4 v8, 0x0

    .line 354
    :goto_0
    return-object v8

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    if-nez v13, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v14, "findVariantLanguageCategory() - living language not enabled"

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 299
    const/4 v8, 0x0

    goto :goto_0

    .line 303
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    monitor-enter v14

    .line 304
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getAllEntriesWithCategoryId(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 305
    .local v9, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    const/4 v5, 0x0

    .line 308
    .local v5, "defaultCategory":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 309
    .local v8, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "25"

    invoke-virtual {v13, v8, v14}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 310
    .local v12, "typeId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "13"

    invoke-virtual {v13, v8, v14}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 312
    .local v10, "language":I
    const/4 v13, 0x3

    if-ne v12, v13, :cond_7

    move/from16 v0, p1

    if-ne v10, v0, :cond_7

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v14, "100"

    invoke-virtual {v13, v8, v14}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "countryList":Ljava/lang/String;
    const/4 v2, 0x0

    .line 317
    .local v2, "countries":[Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 318
    const-string v13, ","

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 321
    :cond_4
    if-eqz v2, :cond_6

    .line 324
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v11, :cond_3

    aget-object v3, v1, v7

    .line 325
    .local v3, "country":Ljava/lang/String;
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found exact match database for variant: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " category: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 305
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "countries":[Ljava/lang/String;
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "countryList":Ljava/lang/String;
    .end local v5    # "defaultCategory":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "language":I
    .end local v11    # "len$":I
    .end local v12    # "typeId":I
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 324
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "countries":[Ljava/lang/String;
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v4    # "countryList":Ljava/lang/String;
    .restart local v5    # "defaultCategory":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "id":Ljava/lang/String;
    .restart local v9    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "language":I
    .restart local v11    # "len$":I
    .restart local v12    # "typeId":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 333
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "country":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    :cond_6
    if-nez v5, :cond_3

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found default database without variant for category: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 335
    move-object v5, v8

    goto/16 :goto_1

    .line 338
    .end local v2    # "countries":[Ljava/lang/String;
    .end local v4    # "countryList":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    move/from16 v0, p1

    if-ne v10, v0, :cond_8

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found TYPE_KEYBOARD_LANGUAGE_ONLY category: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 341
    :cond_8
    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    and-int/lit16 v13, v10, 0xff

    const/16 v14, 0x12

    if-ne v13, v14, :cond_3

    and-int/lit16 v13, v10, 0xff

    move/from16 v0, p1

    and-int/lit16 v14, v0, 0xff

    if-ne v13, v14, :cond_3

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found Korean database with partial keyboard match 0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    and-int/lit16 v15, v10, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 350
    .end local v8    # "id":Ljava/lang/String;
    .end local v10    # "language":I
    .end local v12    # "typeId":I
    :cond_9
    if-eqz v5, :cond_a

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Return default category for variant: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " category: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_a
    move-object v8, v5

    .line 354
    goto/16 :goto_0
.end method

.method private processNextCategory(I)V
    .locals 25
    .param p1, "languageId"    # I

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "LL.processNextCategory() - languageId: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 217
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 282
    :goto_0
    return-void

    .line 221
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    const-string v18, "Current core not yet set.  Delay processing."

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->timeLastProcessed:J

    move-wide/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x2710

    sub-long v19, v19, v21

    cmp-long v17, v17, v19

    if-lez v17, :cond_2

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    const-string v18, "Processing later..."

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v17, v0

    sget-object v18, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v19, 0x2710

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->timeLastProcessed:J

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    sub-long v19, v19, v21

    const-wide/16 v21, 0x0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    invoke-virtual/range {v17 .. v20}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    goto :goto_0

    .line 233
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/connect/service/manager/CategoryManager;->getUniqueCategoryIds()Landroid/util/SparseIntArray;

    move-result-object v4

    .line 234
    .local v4, "categories":Landroid/util/SparseIntArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_8

    .line 235
    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 236
    .local v3, "catId":I
    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    .line 238
    .local v15, "type":I
    const/4 v13, 0x0

    .line 239
    .local v13, "potentialCatDb":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "countryVariant":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->findVariantLanguageCategory(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 244
    .end local v5    # "countryVariant":Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_4

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    const-string v18, "SUBSCRIBED"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 246
    .local v14, "subscribed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    const-string v18, "13"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 248
    .local v8, "language":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    const-string v18, "25"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 249
    .local v16, "typeId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/nuance/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v6

    .line 251
    .local v6, "downloading":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    const-string v18, "DELETE_CATEGORY"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v3, v8}, Lcom/nuance/connect/service/manager/CategoryManager;->sendDeleteCategoryToHost(Ljava/lang/String;II)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    const-string v18, "DELETE_CATEGORY"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v6    # "downloading":Z
    .end local v8    # "language":I
    .end local v14    # "subscribed":Z
    .end local v16    # "typeId":I
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 240
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 258
    .restart local v6    # "downloading":Z
    .restart local v8    # "language":I
    .restart local v14    # "subscribed":Z
    .restart local v16    # "typeId":I
    :cond_6
    if-nez v6, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_7

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    const-string v18, "LAST_UPDATE_FETCHED"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    .line 262
    .local v11, "lastFetched":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    const-string v18, "LAST_UPDATE_AVAILABLE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    .line 265
    .local v9, "lastAvailable":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getNextCategory() -- key: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] lastFetched: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "lastAvailable: ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 268
    cmp-long v17, v11, v9

    if-gtz v17, :cond_4

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/nuance/connect/service/manager/CategoryManager;->get(Ljava/lang/String;)V

    .line 270
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendLivingLanguageUpdateStatus(Z)V

    goto/16 :goto_3

    .line 272
    .end local v9    # "lastAvailable":J
    .end local v11    # "lastFetched":J
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    if-nez v6, :cond_4

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    move-object/from16 v17, v0

    const-string v18, "FIRST_TIME_DOWNLOADED"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v13, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    .line 276
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendLivingLanguageUpdateStatus(Z)V

    goto/16 :goto_3

    .line 281
    .end local v3    # "catId":I
    .end local v6    # "downloading":Z
    .end local v8    # "language":I
    .end local v13    # "potentialCatDb":Ljava/lang/String;
    .end local v14    # "subscribed":Z
    .end local v15    # "type":I
    .end local v16    # "typeId":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v17, v0

    const-string v18, "processNextCategory() -- completed "

    invoke-interface/range {v17 .. v18}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 114
    return-void
.end method

.method public getMessageIDs()[I
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->MESSAGES_HANDLED:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public init(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 107
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    .line 108
    return-void
.end method

.method install(Ljava/lang/String;)Z
    .locals 9
    .param p1, "catId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "found":Z
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v7, v7, Lcom/nuance/connect/service/manager/AbstractCommandManager;->activeTransactions:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    if-eqz v7, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    .line 190
    .local v3, "t":Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getType()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    invoke-virtual {v3}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->getType()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 192
    :cond_1
    const/4 v1, 0x1

    .line 197
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/service/comm/Transaction;>;"
    .end local v3    # "t":Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;
    :cond_2
    if-nez v1, :cond_3

    .line 198
    invoke-virtual {p0, v6}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendLivingLanguageUpdateStatus(Z)V

    .line 201
    :cond_3
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v8, "25"

    invoke-virtual {v7, p1, v8}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 202
    .local v4, "typeId":I
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 203
    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v6, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->installCategory(Ljava/lang/String;)V

    .line 206
    :goto_0
    return v5

    :cond_4
    move v5, v6

    goto :goto_0
.end method

.method public isSupported(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    .line 62
    sget-object v8, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$1;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 97
    :goto_0
    const/4 v7, 0x0

    :cond_0
    :goto_1
    return v7

    .line 64
    :pswitch_0
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v8, v8, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    if-eqz v8, :cond_0

    .line 65
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v8, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v6, :cond_1

    aget v4, v0, v3

    .line 66
    .local v4, "langId":I
    invoke-direct {p0, v4}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory(I)V

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 68
    .end local v4    # "langId":I
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->timeLastProcessed:J

    goto :goto_1

    .line 73
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "core":I
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "cat":Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v8, "13"

    invoke-virtual {v7, v1, v8}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 76
    .local v5, "language":I
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v7, v5}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v7

    if-ne v2, v7, :cond_2

    .line 77
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v8, "LAST_UPDATE_FETCHED"

    invoke-virtual {v7, v1, v8}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 80
    .end local v1    # "cat":Ljava/lang/String;
    .end local v5    # "language":I
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    goto :goto_0

    .line 84
    .end local v2    # "core":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :pswitch_2
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v8, v7, v7}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(IZ)V

    .line 85
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v8, v10, v7}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(IZ)V

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v8, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v8, v7}, Lcom/nuance/connect/service/manager/CategoryManager;->forceForegroundActiveTransactions(I)V

    .line 91
    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v7, v10}, Lcom/nuance/connect/service/manager/CategoryManager;->forceForegroundActiveTransactions(I)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method processNextCategory()V
    .locals 8

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->removeMessages(Lcom/nuance/connect/internal/common/InternalMessages;)V

    .line 211
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v2, 0x2710

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->timeLastProcessed:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V

    .line 213
    return-void
.end method

.method sendInstallInfo(Ljava/lang/String;I)V
    .locals 7
    .param p1, "catId"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 145
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "25"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "typeId":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "13"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "languageId":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "98"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "locale":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "100"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "countryList":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "CATEGORY_ID"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v5, "CATEGORY_TYPE"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v5, "CATEGORY_COUNT"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v5, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v5, "CATEGORY_LOCALE"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v5, "CATEGORY_COUNTRY"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "FIRST_TIME_DOWNLOADED"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "FIRST_TIME_DOWNLOADED"

    invoke-virtual {v5, p1, v6}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ADD_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v5, v6, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 176
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "countryList":Ljava/lang/String;
    .end local v2    # "languageId":Ljava/lang/String;
    .end local v3    # "locale":Ljava/lang/String;
    .end local v4    # "typeId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 173
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "countryList":Ljava/lang/String;
    .restart local v2    # "languageId":Ljava/lang/String;
    .restart local v3    # "locale":Ljava/lang/String;
    .restart local v4    # "typeId":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPDATE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v5, v6, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method sendLivingLanguageUpdateStatus(Z)V
    .locals 3
    .param p1, "updatesPending"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_NOTIFY_LIVING_LANGUAGE_UPDATE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Enabling Living language"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribeAll()V

    goto :goto_0
.end method

.method setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;)V
    .locals 5
    .param p1, "data"    # Lcom/nuance/connect/util/InstallMetadata;

    .prologue
    .line 134
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "setInstallMetadata()"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    .line 135
    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    .line 136
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "catDb":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "catDb":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
