.class Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemFontChanger"
.end annotation


# static fields
.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"


# instance fields
.field mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .locals 1

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/general/MiscPolicy$1;

    .prologue
    .line 1193
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    return-void
.end method

.method private changeFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 23
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 1253
    const/4 v14, 0x0

    .line 1273
    .local v14, "ret":Z
    new-instance v6, Lcom/android/server/enterprise/general/FontWriter;

    invoke-direct {v6}, Lcom/android/server/enterprise/general/FontWriter;-><init>()V

    .line 1274
    .local v6, "fontWriter":Lcom/android/server/enterprise/general/FontWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1277
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 1278
    .local v10, "index":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v11

    .line 1280
    .local v11, "installedFontList":[Ljava/lang/String;
    if-nez v11, :cond_1

    .line 1281
    const-string v20, "MiscPolicy"

    const-string v21, "changeFont():Installed font list is null"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    .end local v14    # "ret":Z
    :cond_0
    :goto_0
    return v14

    .line 1285
    .restart local v14    # "ret":Z
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 1286
    aget-object v20, v11, v8

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1287
    move v10, v8

    .line 1288
    const-string v20, "MiscPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "index"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :cond_2
    const-string v20, "default"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "sans.loc"

    const-string v22, "default"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    aget-object v20, v11, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1298
    const-string v20, "MiscPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "default font is selected..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const/4 v14, 0x1

    goto :goto_0

    .line 1285
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1302
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFinder;->findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;

    move-result-object v15

    .line 1303
    .local v15, "sansTypeface":Lcom/android/server/enterprise/general/Typeface;
    if-nez v15, :cond_5

    .line 1304
    const-string v20, "MiscPolicy"

    const-string v21, "change font failed"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1308
    :cond_5
    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1309
    if-eqz p2, :cond_6

    const-string v20, "com.monotype.android.font."

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1312
    :cond_6
    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v16

    .line 1315
    .local v16, "selectedFont":Ljava/lang/String;
    const-string v20, ".xml"

    const-string v21, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1317
    .local v7, "fontdir":Ljava/lang/String;
    const-string v20, " "

    const-string v21, "-"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Lcom/android/server/enterprise/general/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1320
    .local v5, "fontDir":Ljava/io/File;
    if-nez v5, :cond_7

    .line 1321
    const-string v20, "MiscPolicy"

    const-string v21, "create fontDir object is null "

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1327
    :cond_7
    const/16 v19, 0x0

    .line 1328
    .local v19, "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    if-eqz v15, :cond_9

    .line 1329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1330
    .local v17, "token":J
    const/4 v8, 0x0

    :goto_2
    iget-object v0, v15, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_8

    .line 1331
    iget-object v0, v15, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    check-cast v19, Lcom/android/server/enterprise/general/TypefaceFile;

    .line 1335
    .restart local v19    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 1336
    .local v13, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 1338
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "fonts/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/general/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 1339
    .local v9, "in":Ljava/io/InputStream;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/general/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v5, v9, v0}, Lcom/android/server/enterprise/general/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1341
    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v13    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 1342
    .local v4, "ex":Ljava/lang/Exception;
    const-string v20, "MiscPolicy"

    const-string v21, "changeFont():Exception"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const-string v20, "MiscPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1345
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1349
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_8
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1352
    .end local v17    # "token":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "sans.loc"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1354
    const-string v20, "MiscPolicy"

    const-string v21, "change font:Done"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method private getFontString()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1432
    const/4 v2, 0x0

    .line 1433
    .local v2, "retString":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontsVector()Ljava/util/Vector;

    move-result-object v0

    .line 1434
    .local v0, "fontNames":Ljava/util/Vector;
    if-nez v0, :cond_0

    .line 1435
    const/4 v3, 0x0

    .line 1442
    :goto_0
    return-object v3

    .line 1436
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 1439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1440
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1439
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 1442
    goto :goto_0
.end method

.method private getFontsVector()Ljava/util/Vector;
    .locals 13

    .prologue
    .line 1446
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1447
    new-instance v12, Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-direct {v12}, Lcom/android/server/enterprise/general/TypefaceFinder;-><init>()V

    iput-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1449
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1451
    .local v4, "fontPackageNames":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1453
    .local v2, "fontNames":Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1454
    .local v11, "typefaceFiles":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 1456
    .local v1, "fontAssetManager":Landroid/content/res/AssetManager;
    const/4 v7, 0x0

    .line 1457
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 1458
    .local v6, "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1459
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1461
    .local v9, "token":J
    const/16 v12, 0x80

    :try_start_0
    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 1464
    const/4 v3, 0x0

    .line 1465
    .local v3, "fontPackageName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_2

    .line 1466
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1467
    const-string v12, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1465
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1470
    :cond_1
    const-string v12, "com.monotype.android.font."

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1471
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1472
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1473
    iget-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v12, v1, v3}, Lcom/android/server/enterprise/general/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1478
    .end local v3    # "fontPackageName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1480
    const/4 v2, 0x0

    .line 1482
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1484
    return-object v2

    .line 1476
    .restart local v3    # "fontPackageName":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_2
    :try_start_2
    iget-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v12, v2, v11, v4}, Lcom/android/server/enterprise/general/TypefaceFinder;->getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1482
    .end local v3    # "fontPackageName":Ljava/lang/String;
    .end local v5    # "i":I
    :catchall_0
    move-exception v12

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method


# virtual methods
.method public getActiveFontPosition()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1394
    const/4 v2, 0x0

    .line 1395
    .local v2, "map":Ljava/util/Map;
    const/4 v4, 0x0

    .line 1398
    .local v4, "str":Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.settings"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1400
    .local v3, "settingContext":Landroid/content/Context;
    const-string v8, "prefs"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1402
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1403
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x4000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .local v5, "str":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    move-object v4, v5

    .line 1410
    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :cond_0
    if-eqz v4, :cond_1

    .line 1411
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1418
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "settingContext":Landroid/content/Context;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1419
    const-string v8, "SavedClickedItem"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1420
    .local v6, "v":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1423
    .end local v6    # "v":Ljava/lang/Integer;
    :cond_2
    return v7

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1410
    if-eqz v4, :cond_1

    .line 1411
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1413
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_0

    .line 1409
    :catchall_0
    move-exception v7

    .line 1410
    :goto_2
    if-eqz v4, :cond_3

    .line 1411
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1409
    :cond_3
    :goto_3
    throw v7

    .line 1413
    :catch_2
    move-exception v8

    goto :goto_3

    .line 1409
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "settingContext":Landroid/content/Context;
    .restart local v5    # "str":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 1406
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v5    # "str":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1359
    const-string v2, "MiscPolicy"

    const-string v3, "getSystemActiveFont():getting active system font:"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getActiveFontPosition()I

    move-result v1

    .line 1361
    .local v1, "position":I
    const-string v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveFontPosition():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "fonts":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1364
    aget-object v2, v0, v1

    .line 1366
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1427
    const-string v0, "MiscPolicy"

    const-string v1, "getSystemFonts():getting all system fonts"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected savePreferences(Ljava/lang/String;I)V
    .locals 10
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 1488
    const/4 v3, 0x0

    .line 1489
    .local v3, "mode":I
    const/4 v6, 0x0

    .line 1492
    .local v6, "settingContext":Landroid/content/Context;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.android.settings"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1498
    :goto_0
    if-nez v6, :cond_0

    .line 1499
    const-string v7, "MiscPolicy"

    const-string v8, "Setting Context is Null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :goto_1
    return-void

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1503
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v7, "prefs"

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1506
    .local v4, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1507
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "SavedClickedItem"

    invoke-interface {v1, v7, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1508
    const-string/jumbo v7, "selectedFont"

    invoke-interface {v1, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1510
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1512
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_preferences"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1513
    .local v5, "prefName":Ljava/lang/String;
    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1514
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1515
    .local v2, "editor1":Landroid/content/SharedPreferences$Editor;
    const-string v7, "MONOTYPE"

    invoke-interface {v2, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1516
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 1197
    const-string v18, "MiscPolicy"

    const-string/jumbo v19, "setSystemActiveFont():Start"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const/4 v14, 0x0

    .line 1200
    .local v14, "ret":Z
    if-nez p1, :cond_0

    .line 1201
    const-string v18, "MiscPolicy"

    const-string/jumbo v19, "setSystemActiveFont():Invalid input"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v14

    .line 1249
    :goto_0
    return v18

    .line 1205
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->changeFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 1206
    if-nez v14, :cond_1

    .line 1207
    const/16 v18, 0x0

    goto :goto_0

    .line 1210
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1211
    .local v16, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1212
    .local v5, "am":Landroid/app/IActivityManager;
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 1213
    .local v6, "config":Landroid/content/res/Configuration;
    new-instance v13, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v13, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1214
    .local v13, "randomizer":Ljava/util/Random;
    const/4 v12, 0x0

    .line 1215
    .local v12, "min":I
    const/16 v11, 0x2710

    .line 1219
    .local v11, "max":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v6, Landroid/content/res/Configuration;->FlipFont:I

    .line 1220
    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1221
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1233
    .local v9, "identity":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1235
    .local v3, "activityManager":Landroid/app/ActivityManager;
    const/16 v18, 0x32

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1237
    .local v4, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_2

    .line 1238
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1239
    .local v2, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 1243
    .local v15, "s":Ljava/lang/String;
    invoke-virtual {v3, v15}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 1225
    .end local v2    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "am":Landroid/app/IActivityManager;
    .end local v6    # "config":Landroid/content/res/Configuration;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "identity":J
    .end local v11    # "max":I
    .end local v12    # "min":I
    .end local v13    # "randomizer":Ljava/util/Random;
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "token":J
    :catch_0
    move-exception v7

    .line 1226
    .local v7, "e":Ljava/lang/Exception;
    const-string v18, "MiscPolicy"

    const-string/jumbo v19, "setSystemActiveFont():Exception"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/16 v18, 0x0

    goto :goto_0

    .line 1248
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "activityManager":Landroid/app/ActivityManager;
    .restart local v4    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5    # "am":Landroid/app/IActivityManager;
    .restart local v6    # "config":Landroid/content/res/Configuration;
    .restart local v9    # "identity":J
    .restart local v11    # "max":I
    .restart local v12    # "min":I
    .restart local v13    # "randomizer":Ljava/util/Random;
    .restart local v16    # "token":J
    :cond_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v14

    .line 1249
    goto/16 :goto_0
.end method
