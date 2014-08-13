.class Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;
.super Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
.source "LevelsModelReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/LevelsModelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LevelTagAction"
.end annotation


# instance fields
.field private mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

.field private mIsCompoundLevel:Z

.field private mIsDefaultLevel:Z

.field private mLevel:Lcom/android/server/ssrm/settings/Level;

.field private mLevelConditionName:Ljava/lang/String;

.field private final mLevelConditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mStateFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

.field final synthetic this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V
    .locals 1

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    .line 424
    const-string v0, "level"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditions:Ljava/util/HashSet;

    .line 426
    return-void
.end method


# virtual methods
.method handleEndNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 509
    const-string/jumbo v0, "state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/settings/Level;->addBatteryState(Lcom/android/server/ssrm/settings/BatteryState;)V

    .line 512
    :cond_0
    return-void
.end method

.method handleEndTag()V
    .locals 4

    .prologue
    .line 516
    iget-boolean v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsCompoundLevel:Z

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditions:Ljava/util/HashSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/settings/MainController;->addLevelSetConditions(Lcom/android/server/ssrm/settings/Level;Ljava/util/Set;)V

    .line 527
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsDefaultLevel:Z

    if-eqz v1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/settings/MainController;->addLevelGetCondition(Lcom/android/server/ssrm/settings/Level;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    goto :goto_0

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/settings/MainController;->addLevelGetCondition(Lcom/android/server/ssrm/settings/Level;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v0

    .line 524
    .local v0, "cond":Lcom/android/server/ssrm/settings/Condition;
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mRegistredConditions:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$800(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method handleStartNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 16
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 440
    const/4 v2, 0x0

    .line 441
    .local v2, "errorMsg":Ljava/lang/String;
    const-string v13, "condition"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 442
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsDefaultLevel:Z

    if-eqz v13, :cond_0

    .line 443
    const-string v2, "Default level contains <condition> or <DependsOnConditions>."

    .line 446
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditionName:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 447
    const-string v2, "Multiple <condition> within <level> or <condition> and <DependsOnConditions> exists concurrently in the same <level>."

    .line 450
    :cond_1
    const/4 v13, 0x0

    const-string v14, "name"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, "name_attr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsCompoundLevel:Z

    if-eqz v13, :cond_6

    .line 452
    const/4 v9, 0x0

    .line 453
    .local v9, "tmpCondition":Lcom/android/server/ssrm/settings/Condition;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mRegistredConditions:Ljava/util/HashSet;
    invoke-static {v13}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$800(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/settings/Condition;

    .line 454
    .local v1, "condition":Lcom/android/server/ssrm/settings/Condition;
    invoke-virtual {v1}, Lcom/android/server/ssrm/settings/Condition;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 455
    move-object v9, v1

    goto :goto_0

    .line 459
    .end local v1    # "condition":Lcom/android/server/ssrm/settings/Condition;
    :cond_3
    if-eqz v9, :cond_5

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditions:Ljava/util/HashSet;

    invoke-virtual {v13, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "name_attr":Ljava/lang/String;
    .end local v9    # "tmpCondition":Lcom/android/server/ssrm/settings/Condition;
    :cond_4
    :goto_1
    if-eqz v2, :cond_e

    .line 503
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 462
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "name_attr":Ljava/lang/String;
    .restart local v9    # "tmpCondition":Lcom/android/server/ssrm/settings/Condition;
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Required condition \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' does not exist. Initially must be a level defined with such a condition."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 467
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "tmpCondition":Lcom/android/server/ssrm/settings/Condition;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mConditionNames:Ljava/util/List;
    invoke-static {v13}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$600(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 468
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditionName:Ljava/lang/String;

    goto :goto_1

    .line 470
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Condition \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' is not defined within <conditions>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 474
    .end local v5    # "name_attr":Ljava/lang/String;
    :cond_8
    const-string v13, "DependsOnConditions"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 475
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsCompoundLevel:Z

    goto :goto_1

    .line 476
    :cond_9
    const-string/jumbo v13, "state"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 477
    const/4 v13, 0x0

    const-string/jumbo v14, "step"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 478
    .local v7, "step_attr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 479
    .local v4, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mSteps:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$300(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 480
    .local v8, "temperature":Ljava/lang/Integer;
    if-eqz v8, :cond_a

    if-eqz v4, :cond_a

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mStateFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v13, v14, v15}, Lcom/android/server/ssrm/settings/BatteryControllerFactory;->createBatteryState(II)Lcom/android/server/ssrm/settings/BatteryState;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

    goto/16 :goto_1

    .line 483
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Wrong step \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' is used. Check <steps> for available values."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 486
    .end local v4    # "id":Ljava/lang/Integer;
    .end local v7    # "step_attr":Ljava/lang/String;
    .end local v8    # "temperature":Ljava/lang/Integer;
    :cond_b
    const-string/jumbo v13, "setting"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 487
    const/4 v13, 0x0

    const-string/jumbo v14, "writer"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 488
    .local v12, "writer_attr":Ljava/lang/String;
    const/4 v13, 0x0

    const-string/jumbo v14, "value"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 489
    .local v10, "value_attr":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "option"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 490
    .local v6, "option_attr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriters:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$500(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ssrm/settings/SettingWriter;

    .line 491
    .local v11, "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    if-eqz v11, :cond_d

    .line 492
    if-nez v6, :cond_c

    .line 493
    const-string v6, "null"

    .line 495
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v11, v10, v6}, Lcom/android/server/ssrm/settings/SettingWriter;->createSettingFromString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Setting;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/ssrm/settings/BatteryState;->addSetting(Lcom/android/server/ssrm/settings/Setting;)V

    goto/16 :goto_1

    .line 498
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Writer \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' is not registred."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 505
    .end local v6    # "option_attr":Ljava/lang/String;
    .end local v10    # "value_attr":Ljava/lang/String;
    .end local v11    # "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    .end local v12    # "writer_attr":Ljava/lang/String;
    :cond_e
    return-void
.end method

.method handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v2, 0x0

    .line 430
    const-string/jumbo v0, "true"

    const-string v1, "default"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsDefaultLevel:Z

    .line 432
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v0}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/MainController;->levelsFactory()Lcom/android/server/ssrm/settings/LevelsFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/ssrm/settings/LevelsFactory;->createLevel()Lcom/android/server/ssrm/settings/Level;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    .line 433
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/settings/Level;->initialize(Lcom/android/server/ssrm/settings/BatteryControllerFactory;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/Level;->batteryStatesFactory()Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mStateFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    .line 436
    return-void
.end method
