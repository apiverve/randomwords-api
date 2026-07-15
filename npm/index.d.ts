declare module '@apiverve/randomwords' {
  export interface randomwordsOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface randomwordsResponse {
    status: string;
    error: string | null;
    data: RandomWordData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface RandomWordData {
      word:          null | string;
      definitions:   (null | string)[];
      pronunciation: null | string;
  }

  export default class randomwordsWrapper {
    constructor(options: randomwordsOptions);

    execute(callback: (error: any, data: randomwordsResponse | null) => void): Promise<randomwordsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: randomwordsResponse | null) => void): Promise<randomwordsResponse>;
    execute(query?: Record<string, any>): Promise<randomwordsResponse>;
  }
}
